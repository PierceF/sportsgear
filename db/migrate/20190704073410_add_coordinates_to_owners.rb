class AddCoordinatesToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :latitude, :float
    add_column :owners, :longitude, :float
  end
end
