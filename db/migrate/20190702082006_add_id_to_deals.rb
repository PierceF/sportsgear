class AddIdToDeals < ActiveRecord::Migration[5.2]
  def change
    add_reference :deals, :item, foreign_key: true
    add_reference :deals, :user, foreign_key: true
  end
end
