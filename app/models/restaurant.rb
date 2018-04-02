class Restaurant < ApplicationRecord
  attr_accessor :name, :address, :food_rec, :wine_rec, :description
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :food_rec, presence: true
  validates :wine_rec, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :neighborhood, presence: true, inclusion: {in: %w(Baixa Foz Matosinhos Miragaia Cedofeita Ribeira Boavista Campanha Antas Paranhos Vitoria Aldoar Afurada Bonfim)}

  has_many :cuisine_restaurants, dependent: :destroy
  has_many :cuisine, through: :cuisine_restaurants

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
