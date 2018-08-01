class Student < ApplicationRecord

  validates :username, presence: true, uniqueness: true

  has_secure_password

  has_many :bookings
  has_many :reviews, through: :bookings ##--Can access the reviews through booking--##
  has_many :lessons, through: :bookings
  has_many :instruments, through: :lessons
  has_many :teachers, through: :lessons

end
