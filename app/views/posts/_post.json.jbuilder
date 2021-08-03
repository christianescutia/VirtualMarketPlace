json.extract! post, :id, :posting_id, :user_id, :listing_id, :price, :quantity, :item, :date_posted, :availability, :views, :created_at, :updated_at
json.url post_url(post, format: :json)
