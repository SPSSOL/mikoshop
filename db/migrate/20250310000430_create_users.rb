class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.boolean :admin, default: false
    end

    add_index :users, :email
    add_index :users, :confirmation_token, unique: true
    add_index :users, :remember_token, unique: true
  end
end
