class DeleteUsersFromDeals < ActiveRecord::Migration[5.2]
  def change
    remove_column :deals, :user_id
  end
end
