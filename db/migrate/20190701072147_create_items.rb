class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :photos
      t.string :description
      t.integer :owner_id

      t.timestamps
    end
  end
end
