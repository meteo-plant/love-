class AddNumberOfSheetsToPurchase < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :number_of_sheets, :integer
  end
end
