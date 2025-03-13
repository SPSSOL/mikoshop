class CreatePromoBanners < ActiveRecord::Migration[8.0]
  def change
    create_table :promo_banners do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.boolean :active

      t.timestamps
    end
  end
end
