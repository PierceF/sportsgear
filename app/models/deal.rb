class Deal < ApplicationRecord
  belongs_to :item
  belongs_to :user

  def set
    self.end_date = Date.today + duration
    self.status = "ongoing"
  end

  def self.ongoing
    deals = Deal.where(status: "ongoing")
    deals.each do |deal|
      if deal.end_date < Date.today
        deal.status = "finished"
        deal.save
      end
    end
  end

def self.show
    deals = Deal.where(status: "ongoing")
    items_to_change = []
    deals.each do |deal|
      items_to_change << Item.find(deal.item_id)
    end

    items_to_change.each do |item|
      item.list = false
      item.save
    end
  end
end
