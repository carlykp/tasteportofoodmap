class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :date, presence: true
  validates :time_1, presence: true
  validates :time_2, presence: true
  validates :guests, presence: true
  validates :email, presence: true

end
