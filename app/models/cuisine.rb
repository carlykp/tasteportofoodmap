class Cuisine < ApplicationRecord
   validates :name, presence: true, inclusion: {in: ["Baixa", "Foz", "Matosinhos", "Miragaia", "Vila Nova de Gaia", "Cedofeita", "Ribeira", "Boavista", "Campanhã", "Antas", "Paranhos", "Vitoria", "Aldoar", "Afurada". "Bonfim"]}
end
