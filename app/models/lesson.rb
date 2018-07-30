class Lesson < ApplicationRecord
  belongs_to :teacher
  belongs_to :instrument
  has_many :bookings
  has_many :students, through: :bookings
  has_many :reviews, through: :bookings
end
