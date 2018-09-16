class CreateShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_addresses do |t|
      t.string :shipping_address_name
      t.integer :user_id

      t.timestamps
    end
  end
end
