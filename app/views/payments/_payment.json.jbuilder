json.extract! payment, :id, :order_id, :method, :status, :created_at, :created_at, :updated_at
json.url payment_url(payment, format: :json)
