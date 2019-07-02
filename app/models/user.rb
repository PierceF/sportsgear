class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  has_many :deals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
