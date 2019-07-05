class Item < ApplicationRecord
  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true
  belongs_to :owner
  has_many :deals
  mount_uploader :photos, PhotoUploader

  include PgSearch
  # Movie.search_by_title_and_syllabus(query)
  pg_search_scope :search_by_name_and_description,
    against: {
      name: 'A',
      description: 'B'
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
