class Neighborhood < ApplicationRecord
  validates :name, presence: true, uniqueness: true, inclusion: {in: ["Baixa", "Foz", "Matosinhos", "Miragaia", "Vila Nova de Gaia", "Cedofeita", "Ribeira", "Boavista", "Campanhã", "Antas", "Paranhos", "Vitoria", "Aldoar", "Afurada". "Bonfim"]}
  has_many :restaurants

end
