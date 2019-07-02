class AddItemToOwner < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :owner, foreign_key: true
  end
end
