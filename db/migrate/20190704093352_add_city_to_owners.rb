class AddCityToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :city, :string
  end
end
