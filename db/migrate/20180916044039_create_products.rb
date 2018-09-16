class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :airtist_name
      t.integer :genre_id
      t.string :jaket_image
      t.integer :price
      t.string :label_name
      t.integer :stock
      t.integer :event_id
      t.boolean :delete_flag

      t.timestamps
    end
  end
end
