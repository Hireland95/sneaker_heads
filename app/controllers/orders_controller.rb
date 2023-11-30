class OrdersController < ApplicationController

  def show
      @orders = current_user.orders.where(state: 'Sent to Acquired')
  end

  def create
    random_number = rand(10_000..99_999)
    trainer = Trainer.find(params[:trainer_id])
    order = Order.create!(trainer: trainer, trainer_sku: trainer.sku, amount: trainer.price, state: 'pending', user: current_user, order_uniq: random_number )
    redirect_to new_order_payment_path(order)
  end
end
