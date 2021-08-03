class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :listing_id
      t.string :item
      t.decimal :price
      t.integer :quantity
      t.boolean :availability

      t.timestamps
    end
  end
end
