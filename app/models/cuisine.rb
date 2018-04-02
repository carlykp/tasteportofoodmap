class Cuisine < ApplicationRecord
   validates :name, presence: true, inclusion: {in: ["Portuguese", "International", "Breakfast", "Drinks", "Cafe", "Italian", "French", "Vegetarian", "Wine Bar", "Argentinian", "Fusion", "Seafood", "Sushi", "Shop"]}
end
