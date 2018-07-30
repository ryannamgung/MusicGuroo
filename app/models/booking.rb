class Booking < ApplicationRecord
  belongs_to :lesson
  has_one :review
  belongs_to :student
  has_one :teacher, through: :lesson
  has_one :instrument, through: :lesson
end
