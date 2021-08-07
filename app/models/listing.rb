class Listing < ApplicationRecord
    validates :listing_id, presence: true, uniqueness: true
    validates :item, presence: true
    validates :price, presence: true
    validates :quantity, presence: true, numericality: { only_integer: true , greater_than: 0}
    validates :availability, presence: true
end
