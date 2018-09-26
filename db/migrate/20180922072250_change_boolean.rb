class ChangeBoolean < ActiveRecord::Migration[5.2]
  def up
    change_table :products do |t|
      t.change :delete_flag, :boolean, default:false, null: false
    end
  end

  def down
    change_table :products do |t|
      t.change :delete_flag, :boolean
    end
  end
	def up
    change_table :purchases do |t|
      t.change :stock_flag, :boolean, default:false, null: false
    end
  end

  def down
    change_table :purchases do |t|
      t.change :stock_flag, :boolean
    end
  end
  	def up
    change_table :purchases do |t|
      t.change :order_flag, :boolean, default:false, null: false
    end
  end

  def down
    change_table :purchases do |t|
      t.change :order_flag, :boolean
    end
  end
  def up
    change_table :purchases do |t|
      t.change :shipping_flag, :boolean, default:false, null: false
    end
  end

  def down
    change_table :purchases do |t|
      t.change :shipping_flag, :boolean
    end
  end
  def up
    change_table :purchases do |t|
      t.change :payment_flag, :boolean, default:false, null: false
    end
  end

  def down
    change_table :purchases do |t|
      t.change :payment_flag, :boolean
    end
  end
  def up
    change_table :purchases do |t|
      t.change :method_of_payment, :boolean, default:false, null: false
    end
  end

  def down
    change_table :purchases do |t|
      t.change :method_of_payment, :boolean
    end
  end
end




