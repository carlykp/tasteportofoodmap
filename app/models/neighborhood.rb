class Neighborhood < ApplicationRecord
  attr_accessor :name
  validates :name, presence: true, inclusion: {in: %w(Baixa Foz Matosinhos Miragaia Cedofeita Ribeira Boavista Campanha Antas Paranhos Vitoria Aldoar Afurada Bonfim)}

end
