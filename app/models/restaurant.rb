class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :food_rec, presence: true
  validates :wine_rec, presence: true
  validates :description, presence: true
end
