class OrdersController < ApplicationController
  def create
    trainer = Trainer.find(params[:trainer_id])
    order = Order.create!(trainer: trainer, trainer_sku: trainer.sku, amount: trainer.price, state: 'pending', user: current_user)
    redirect_to new_order_payment_path(order)
  end
end
