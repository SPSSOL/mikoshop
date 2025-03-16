json.extract! product, :id, :name, :description, :price, :category_id, :image_url, :created_at, :created_at, :updated_at
json.url product_url(product, format: :json)
