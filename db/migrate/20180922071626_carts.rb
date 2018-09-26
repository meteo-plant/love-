class Carts < ActiveRecord::Migration[5.2]
 def up
    change_table :carts do |t|
      t.change :delete_flag, :boolean, default:false, null: false
    end
  end

  def down
    change_table :carts do |t|
      t.change :delete_flag, :boolean
    end
  end
end
