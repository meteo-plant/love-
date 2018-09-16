class CreateSongOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :song_orders do |t|
      t.integer :song_id
      t.integer :disk_id
      t.integer :song_order_number

      t.timestamps
    end
  end
end
