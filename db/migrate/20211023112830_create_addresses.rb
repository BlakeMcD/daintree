class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :postcode
      t.string :address_type
      t.integer :user_id

      t.timestamps
    end
  end
end
