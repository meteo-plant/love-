class AddOldPriceToPurchase < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :old_price, :integer
  end
end
