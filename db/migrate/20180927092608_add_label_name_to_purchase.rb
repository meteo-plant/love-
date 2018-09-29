class AddLabelNameToPurchase < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :label_name, :string
  end
end
