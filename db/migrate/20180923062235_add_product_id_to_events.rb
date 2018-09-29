class AddProductIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :product_id, :integer
  end
end
