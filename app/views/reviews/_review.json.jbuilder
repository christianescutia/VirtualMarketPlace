json.extract! review, :id, :review_id, :user_id, :listing_id, :rating, :review_content, :created_at, :updated_at
json.url review_url(review, format: :json)
