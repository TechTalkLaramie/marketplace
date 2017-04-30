class AddDurationToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :duration, :decimal
  end
end
