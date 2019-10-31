class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_address_1
      t.string :address_address_2
      t.string :address_city
      t.string :address_state
      t.string :address_country
      t.string :address_zipcode

      t.datetime :created_at
      t.timestamps
    end
  end
end
