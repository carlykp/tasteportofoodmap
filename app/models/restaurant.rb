class Restaurant < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :food_rec, presence: true
  validates :wine_rec, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :neighborhood, presence: true, inclusion: {in: %w(Bolhao Baixa Foz Matosinhos Miragaia Cedofeita Ribeira Boavista Campanha Antas Paranhos Vitoria Aldoar Afurada Bonfim)}

  has_many :cuisine_restaurants, dependent: :destroy
  has_many :cuisine, through: :cuisine_restaurants
  has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search,
    associated_against: {
      cuisine: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
