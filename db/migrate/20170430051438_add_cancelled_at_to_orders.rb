class AddCancelledAtToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :cancelled_at, :datetime
  end
end
