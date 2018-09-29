class ChangeColoumToProduct < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :delete_flag, :boolean, default: false, null: false
  end

  #変更前の型
  def down
    change_column :products, :delete_flag, :boolean
  end
end
