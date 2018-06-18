class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :date, presence: true
  validates :time_1, presence: true
  validates :time_2, presence: true
  validates :guests, presence: true
  validates :email, presence: true
  validates :telephone, length: { minimum: 9 }

  validate :date_cannot_be_in_the_past, :time_must_be_in_the_future

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "Cannot be in the past")
    end
  end

  def time_must_be_in_the_future
    if date == Date.today && time_1.present? && time_1 <= Time.now
      errors.add(:date, "We need more time to confirm your booking")
    end
  end


end
