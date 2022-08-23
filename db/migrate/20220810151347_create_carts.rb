class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.boolean :purchased
      t.datetime :purchased_on

      t.timestamps
    end
  end
end
