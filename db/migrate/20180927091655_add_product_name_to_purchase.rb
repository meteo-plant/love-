class AddProductNameToPurchase < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :product_name, :string
  end
end
