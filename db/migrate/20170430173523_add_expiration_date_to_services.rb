class AddExpirationDateToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :expiration_date, :datetime
  end
end
