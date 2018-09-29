class RemoveEventIdToProducts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :products, :event_id, :integer
  end
end
