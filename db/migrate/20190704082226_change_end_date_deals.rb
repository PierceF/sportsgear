class ChangeEndDateDeals < ActiveRecord::Migration[5.2]
  def change
    rename_column :deals, :endDate, :end_date
  end
end
