class RemoveForeignKeyFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :items, column: :owner_id
  end
end
