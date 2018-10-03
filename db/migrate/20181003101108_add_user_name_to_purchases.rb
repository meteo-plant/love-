class AddUserNameToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :user_name, :string
  end
end
