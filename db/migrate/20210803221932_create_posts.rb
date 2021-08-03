class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :posting_id
      t.string :user_id
      t.string :listing_id
      t.string :review_id
      t.timestamp :date_posted

      t.timestamps
    end
  end
end
