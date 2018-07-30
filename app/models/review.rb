#Daniel Ryan
class Review < ApplicationRecord
  belongs_to :booking
  has_one :student, through: :booking
  has_one :lesson, through: :booking
  has_one :teacher, through: :lesson
  has_one :instrument, through: :lesson
end
