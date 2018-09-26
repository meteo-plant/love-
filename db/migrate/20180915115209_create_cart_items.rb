class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :number_of_sheets :default => 0
      t.integer :old_price

      t.timestamps
    end
  end
end
