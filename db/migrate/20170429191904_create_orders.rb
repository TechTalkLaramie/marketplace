class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.datetime :appointment_time
      t.integer :user_id
      t.integer :service_id
      t.datetime :accepted_at

      t.timestamps
    end
  end
end
