class User < ApplicationRecord
  validates :booking_ref, presence: true, uniqueness: true
end
