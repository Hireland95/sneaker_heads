class AddColumnToTrainers < ActiveRecord::Migration[7.0]
  def change
    add_column :trainers, :description, :text
  end
end
