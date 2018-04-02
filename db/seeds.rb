# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Destroying"
User.destroy_all
Restaurant.destroy_all

p "Create users"
users = User.create([{ booking_ref: '4D5EH9'}, {booking_ref: "J8W6D1"}, {booking_ref: "L93PO7"}])

p "Create restaurants"

flor = Restaurant.new(name: "Flor dos Congregados", address: "Tv. dos Congregados 11, 4000-114 Porto", food_rec: "The sandwich is the best thing you will ever try", wine_rec: "Red espumanta", description: "A family run place with a cozy feel and slow food.", price: "€€", neighborhood: "Baixa",
      cuisine: Cuisine.create([
                {name: 'Portuguese'},
                {name: 'International'}]))
flor.save!

prova = Restaurant.new(name: "Prova Food & wine", address: "Rua Ferreira Borges, 86, Porto", food_rec: "The homemade empadas are the perfect way to nibble while listenig to great jazz music", wine_rec: "The one place we do not make recommendations, let owner Diogo guide you on your wine journey", description: "The best kind of wine bar, leave the pertension at home and just relax.", price: "€€", neighborhood: "Ribeira",
      cuisine: Cuisine.create([
                {name: 'Portuguese'},
                {name: 'Wine Bar'}]))
prova.save!

comer = Restaurant.new(name: "Comer e Chorar por Mais", address: "Rua Formosa 300, 4000-049 Porto", food_rec: "The spicy chorizo and the serra de Estrela cheese make for wonderful gifts an the perfect ingredients for a snack or picnic", wine_rec: "If enjoying by day, a light vinho verde. If in the evening or during the winter warm yourself with a Douro Red", description: "Make room in your suitcase! This is Disneyland for Portuguese food lovers.", price: "€€€", neighborhood: "Bolhao",
      cuisine: Cuisine.create([
                {name: 'Portuguese'},
                {name: 'Shop'}]))
comer.save!

p "Seeded"



