class Item < ApplicationRecord
  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true
  belongs_to :owner
  has_many :deals
  mount_uploader :photos, PhotoUploader


  geocoded_by :owner_address
  after_validation :geocode

  def owner_address
    owner.address
  end
end
