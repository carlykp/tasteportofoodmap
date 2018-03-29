# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ booking_ref: '4D5EH9'}, {booking_ref: "J8W6D1"}, {booking_ref: "L93PO7"}])


restaurants = [{name: "Flor dos Congregados", address: "Tv. dos Congregados 11, 4000-114 Porto", food_rec: "The sandwich is the best thing you will ever try", wine_rec: "Red espumanta", description: "A family run place with a cozy feel and slow food." },\
  {name: "Vingança", address: "Rua da Picaria 84, Porto", food_rec: "The hot shrimp in cod roe is divine", wine_rec: "A white from the Dão region is the best compliment", description: "Vengence is the translation of this name and we promise you will not be sorry after eating here." },\
  {name: "Prova", address: "R. de Ferreira Borges 86, 4050-116 Porto", food_rec: "The homemade Prova sandwichis sure to to start you off right.", wine_rec: "The one place we do not make recommendations, we leave it to Diogo to guide you on your journey.", description: "Forget pertensious wine bars, here is a place to feel at home." },\
]
p "On to restaurants"
restaurants.each do |mov|
  Restaurant.create(name: mov[:name], address: mov[:address], food_rec: mov[:food_rec], wine_rec: mov[:wine_rec], description: mov[:description] )
end
