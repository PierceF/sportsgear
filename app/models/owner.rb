class Owner < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  has_many :items, dependent: :destroy
  has_many :deals, through: :items
end
