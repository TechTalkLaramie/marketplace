class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :from_user_id
      t.integer :order_id
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
