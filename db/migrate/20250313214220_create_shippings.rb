class CreateShippings < ActiveRecord::Migration[8.0]
  def change
    create_table :shippings do |t|
      t.references :order, null: false, foreign_key: true
      t.string :pickup_location
      t.string :status

      t.timestamps
    end
  end
end
