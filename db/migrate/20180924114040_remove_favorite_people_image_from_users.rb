class RemoveFavoritePeopleImageFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :favorite_people_image, :string
  end
end
