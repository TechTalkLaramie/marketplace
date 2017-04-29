class AddNameAboutMeAndPhoneToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :about_me, :text
    add_column :users, :phone, :string
  end
end
