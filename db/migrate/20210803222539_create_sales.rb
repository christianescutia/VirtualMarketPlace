class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :sale_id
      t.string :user_id
      t.string :listing_id
      t.decimal :price_sold
      t.integer :quantity
      t.timestamp :date_sold

      t.timestamps
    end
  end
end
