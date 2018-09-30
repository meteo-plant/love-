class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :shipping_address_id
      t.string :purchase_date
      t.integer :cart_id
      t.boolean :stock_flag, null: false, default: "false"
      t.boolean :order_flag, null: false, default: "false"
      t.boolean :shipping_flag, null: false, default: "false"
      t.boolean :payment_flag, null: false, default: "false"
      t.boolean :method_of_payment
      t.datetime :shipping_date
      t.datetime :payment_date

      t.timestamps
    end
  end
end
