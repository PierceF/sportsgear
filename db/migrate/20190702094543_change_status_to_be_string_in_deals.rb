class ChangeStatusToBeStringInDeals < ActiveRecord::Migration[5.2]
  def change
    change_column :deals, :status, :string
  end
end
