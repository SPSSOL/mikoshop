class CreateDiscounts < ActiveRecord::Migration[8.0]
  def change
    create_table :discounts do |t|
      t.string :code
      t.decimal :discount_percent
      t.date :valid_until

      t.timestamps
    end
    add_index :discounts, :code, unique: true
  end
end
