class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.text :event_information
      t.string :venue
      t.string :date_and_time

      t.timestamps
    end
  end
end
