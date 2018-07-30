class Teacher < ApplicationRecord
  has_many :lessons
  has_many :instruments, through: :lessons
  has_many :bookings, through: :lessons
  has_many :reviews, through: :bookings
  has_many :students, through: :bookings
end
