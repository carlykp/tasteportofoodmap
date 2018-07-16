class User < ApplicationRecord
  # after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # validates :booking_ref, presence: true, uniqueness: true
  has_many :bookings, dependent: :destroy

  private

  # def send_welcome_email
  #   UserMailer.welcome(self).deliver_now
  # end
end
