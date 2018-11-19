class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  # as a client
  has_many :booked_rooftops, through: :bookings, source: :roof
  # as an owner
  has_many :owned_rooftops, class_name: 'Roof'
end
