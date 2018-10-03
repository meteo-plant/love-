class AddEventNameToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :event_name, :string
  end
end
