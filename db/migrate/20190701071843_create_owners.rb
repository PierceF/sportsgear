class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :avatar
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
