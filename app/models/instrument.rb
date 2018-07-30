class Instrument < ApplicationRecord
  has_many :lessons
  has_many :teachers, through: :lessons
  has_many :bookings, through: :lessons
  has_many :students, through: :bookings
end
