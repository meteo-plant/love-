class ChangeColoumToPurchas < ActiveRecord::Migration[5.2]
  def up
    change_column :purchases, :order_flag, :boolean, default: false, null: false
  end

  #変更前の型
  def down
    change_column :purchases, :order_flag, :boolean
  end
end
