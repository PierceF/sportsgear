class AddEndDateToDeal < ActiveRecord::Migration[5.2]
  def change
    add_column :deals, :endDate, :date
  end
end
