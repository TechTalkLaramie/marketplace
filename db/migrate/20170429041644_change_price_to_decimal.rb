class ChangePriceToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :services, :price, :decimal, scale: 2, precision: 9
  end
end
