class AddJaketImageIdToPurchase < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :jaket_image_id, :string
  end
end
