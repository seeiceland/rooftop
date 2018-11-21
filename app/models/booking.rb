class Booking < ApplicationRecord
  belongs_to :roof
  belongs_to :user
  # validates :price, presence: true
end
