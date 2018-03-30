class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :food_rec, presence: true
  validates :wine_rec, presence: true
  validates :description, presence: true

  belongs_to :neighborhood

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
