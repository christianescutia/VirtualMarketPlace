json.extract! sale, :id, :sale_id, :user_id, :listing_id, :price_sold, :quantity, :date_sold, :created_at, :updated_at
json.url sale_url(sale, format: :json)
