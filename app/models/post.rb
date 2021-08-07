class Post < ApplicationRecord
    validates :posting_id, presence: true, uniqueness: true
    validates :user_id, presence: true
    validates :listing_id, presence: true
    validates :review_id, presence: true
    validates :date_posted, presence: true
end
