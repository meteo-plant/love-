class AddDateAndTimeToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :date_and_time, :string
  end
end
