class Roof < ApplicationRecord
  CITIES = ["Tel-aviv","Herzliya","Ashdod","Ashkelon","Jerusalem","Raanana"]
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :user
  has_many :bookings
  validates :name, uniqueness: true, presence: true
  validates :price, presence: true
end
