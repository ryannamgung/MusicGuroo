require 'date'

class Teacher < ApplicationRecord

  validates :name, :bio, :philosophy, presence: true
  validates :bio, length: { maximum: 500 }
  validates :username, presence: true, uniqueness: true

  has_secure_password

  has_many :lessons
  has_many :instruments, through: :lessons
  has_many :bookings, through: :lessons
  has_many :reviews, through: :bookings
  has_many :students, through: :bookings

  def calendar
    date = DateTime.now.next
    slots = []
    30.times do
      hour = 10
      8.times do
        slots << DateTime.new(date.year, date.month, date.day, hour, 0, 0)
        hour += 1
      end
      date = date.next
    end
    slots
  end

  def all_slots
    calendar
  end

  def booked_slots
  end

  def available_slots
    all_slots - booked_slots
  end

  def available_slots
    booked_slots = @lesson.teacher.bookings.map { |booking| booking.time }

    calendar.select do |slot|
      !booked_slots.include?(slot)
    end

  end
end
