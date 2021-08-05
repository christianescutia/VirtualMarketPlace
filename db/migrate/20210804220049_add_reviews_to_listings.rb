class AddReviewsToListings < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :listings, null: true, foreign_key: true
  end
end
