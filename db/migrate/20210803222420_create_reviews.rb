class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :review_id
      t.string :user_id
      t.string :listing_id
      t.decimal :rating
      t.text :review_content

      t.timestamps
    end
  end
end
