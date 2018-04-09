class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :booking_ref, presence: true, uniqueness: true
  has_many :bookings, dependent: :destroy
end
