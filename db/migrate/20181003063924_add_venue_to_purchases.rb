class AddVenueToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :venue, :string
  end
end
