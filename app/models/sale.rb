class Sale < ApplicationRecord
    validates :sale_id, presence: true, uniqueness: true
    validates :user_id, presence: true
    validates :listing_id, presence: true
    validates :price_sold, presence: true
    validates :quantity, presence: true, numericality: { only_integer: true , greater_than: 0}
    validates :date_sold, presence: true
end
