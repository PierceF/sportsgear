class Item < ApplicationRecord
  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true
  belongs_to :owner
  has_many :deals
  mount_uploader :photos, PhotoUploader
end
