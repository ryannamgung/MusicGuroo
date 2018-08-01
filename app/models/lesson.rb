class Lesson < ApplicationRecord
  belongs_to :teacher
  belongs_to :instrument
  has_many :bookings
  has_many :students, through: :bookings
  has_many :reviews, through: :bookings

  def genres
    ['Classical', 'Rock', 'Pop', 'Country', 'Rap', 'R&B', 'Jazz', 'Funk', 'Fusion', 'Bluegrass', 'World Music', 'Soul', 'Ethnic', 'Indie', 'Folk/Acoustic', 'Raggae']
  end

  def sample_bookings
    self.bookings.build
  end

end
