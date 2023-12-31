require 'uri'
require 'net/http'
require 'JSON'

class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end

  def create
    @order = current_user.orders.find(params[:order_id])

    url = URI("https://test-api.acquired.com/v1/login")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["accept"] = 'application/json'
    request["content-type"] = 'application/json'
    request.body = "{\"app_key\":\"b32d7ac32a22fa9eec4e6d1d79c29c7d\",\"app_id\":\"41695837\"}"

    response = http.request(request)
    body = response.read_body
    data = JSON.parse body
    access_token = data['access_token']

    payment_link_url = URI("https://test-api.acquired.com/v1/payment-links")

    http = Net::HTTP.new(payment_link_url.host, payment_link_url.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(payment_link_url)
    request["accept"] = 'application/json'
    request["content-type"] = 'application/json'
    request["authorization"] = "Bearer #{access_token}"
    request.body = {
      transaction: {
        currency: 'gbp',
        moto: false,
        capture: true,
        order_id: @order.order_uniq,
        amount: @order.amount_cents / 100
      },
      customer: {
        first_name: @order.user.first_name,
        last_name: @order.user.last_name
      },
      billing: {
        address: @order.address
      },
      shipping: {
        address_match: true,
        address: { line_1: @order.address, postcode: @order.postcode},
        email: @order.user.email
      },
      payment: {reference: @order.id.to_s },
      customer: { shipping: { address_match: false } },
      tds: { is_active: false},
      is_recurring: false,
      count_retry: 3,
      expires_in: 259200,
      payment_methods: ['pay_by_bank','google_pay', 'card', "apple_pay"],
    }.to_json
    response = http.request(request)
    body = response.read_body
    puts body
    data = JSON.parse body
    link_id = data['link_id']
    checkout_url = "https://test-pay.acquired.com/v1/#{link_id}"
    puts checkout_url
    if redirect_to checkout_url, allow_other_host: true
      puts "successfully redirected!"
      @order.state = "Sent to Acquired"
      @order.save
      puts "changed the order status"
    end
  end
end
