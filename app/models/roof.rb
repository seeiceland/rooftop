class Roof < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, uniqueness: true, presence: true
  validates :duration, presence: true
  validates :price, presence: true
end
