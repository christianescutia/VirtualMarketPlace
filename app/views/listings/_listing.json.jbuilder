json.extract! listing, :id, :listing_id, :item, :price, :quantity, :availability, :created_at, :updated_at
json.url listing_url(listing, format: :json)
