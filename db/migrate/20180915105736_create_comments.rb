class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :product_id
      t.integer :user_id
      t.text :comment
      t.integer :evaluation

      t.timestamps
    end
  end
end
