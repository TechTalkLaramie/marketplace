class AddFixedRateToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :fixed_rate, :boolean
  end
end
