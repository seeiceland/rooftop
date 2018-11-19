class Booking < ApplicationRecord
  belongs_to :roof
  belongs_to :user
  validates :price, presence: true
  validates :duration, presence: true
end
