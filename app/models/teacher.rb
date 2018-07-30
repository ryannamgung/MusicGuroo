class Teacher < ApplicationRecord

  validates :name, :bio, :philosophy, presence: true
  validates :bio, length: { maximum: 500 }

  has_many :lessons
  has_many :instruments, through: :lessons
  has_many :bookings, through: :lessons
  has_many :reviews, through: :bookings
  has_many :students, through: :bookings

end
