class CreateDisks < ActiveRecord::Migration[5.2]
  def change
    create_table :disks do |t|
      t.string :disk_name
      t.integer :product_id

      t.timestamps
    end
  end
end
