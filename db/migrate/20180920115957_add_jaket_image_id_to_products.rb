class AddJaketImageIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :jaket_image_id, :string
  end
end
