class AddLocationDescriptionToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :location_description, :string
  end
end
