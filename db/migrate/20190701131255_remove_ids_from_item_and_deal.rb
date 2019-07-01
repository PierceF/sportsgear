class RemoveIdsFromItemAndDeal < ActiveRecord::Migration[5.2]
  def change
    remove_column :deals, :user_id
    remove_column :deals, :item_id
  end
end
