class ChangeColumToCartItem < ActiveRecord::Migration[5.2]
   def up
    change_column :Cart_items, :number_of_sheets, :integer, default: 1
  end

  #変更前の型
  def down
    change_column :Cart_items, :number_of_sheets, :integer
  end
end

