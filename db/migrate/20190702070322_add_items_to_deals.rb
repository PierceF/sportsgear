class AddItemsToDeals < ActiveRecord::Migration[5.2]
  def change
    add_reference :deals, :item, foreign_key: true
  end
end
