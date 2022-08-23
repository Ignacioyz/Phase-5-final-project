class CreatePaintings < ActiveRecord::Migration[6.1]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.integer :cart_id 
      t.timestamps
    end
  end
end
