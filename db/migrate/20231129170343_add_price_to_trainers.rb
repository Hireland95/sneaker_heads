class AddPriceToTrainers < ActiveRecord::Migration[7.0]
  def change
    add_monetize :trainers, :price, currency: { present: false }
  end
end
