class AddColumnToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :order_uniq, :integer
  end
end
