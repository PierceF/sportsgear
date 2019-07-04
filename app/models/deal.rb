class Deal < ApplicationRecord
  belongs_to :item
  belongs_to :user

  def set
    self.end_date = Date.today + duration
    self.status = "ongoing"
  end
end
