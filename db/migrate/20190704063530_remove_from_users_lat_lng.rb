class RemoveFromUsersLatLng < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :latitude, :float
    remove_column :users, :longitude, :float
  end
end
