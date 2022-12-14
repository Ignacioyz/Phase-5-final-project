class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :username
      t.string :password_digest
      t.string :email
      t.boolean :admin

      t.timestamps
    end
  end
end
