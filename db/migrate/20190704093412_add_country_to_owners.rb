class AddCountryToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :country, :string
  end
end
