class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.integer :item_id
      t.integer :user_id
      t.boolean :status
      t.integer :duration
      t.date :start_date

      t.timestamps
    end
  end
end
