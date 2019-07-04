class AddColumnToDeal < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :list, :boolean, default: true
  end
end
