class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :password
      t.string :role
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
