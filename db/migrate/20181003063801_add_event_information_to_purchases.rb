class AddEventInformationToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :event_information, :text
  end
end
