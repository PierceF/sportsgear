class RemoveOwnerIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :owner_id
  end
end
