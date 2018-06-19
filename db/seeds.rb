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

flor = Restaurant.new(name: "Flor dos Congregados", address: "Tv. dos Congregados 11, 4000-114 Porto", food_rec: "The sandwich is the best thing you will ever try", wine_rec: "Red espumanta", description: "A family run place with a cozy feel and slow food.", price: "€€", neighborhood: "Baixa", sunday:"Closed", monday:"12h - 16h & 20h - 24h", tuesday:"12h - 16h & 20h - 24h", wednesday:"12h - 16h & 20h - 24h", thursday:"12h - 16h & 20h - 24h", friday:"12h - 16h & 20h - 01h", saturday:"12h - 16h & 20h - 01h",
      cuisine: Cuisine.create([
                {name: 'Portuguese'},
                {name: 'International'}]))
flor.save!

prova = Restaurant.new(name: "Prova Food & wine", address: "Rua Ferreira Borges, 86, Porto", food_rec: "The homemade empadas are the perfect way to nibble while listenig to great jazz music", wine_rec: "The one place we do not make recommendations, let owner Diogo guide you on your wine journey", description: "The best kind of wine bar, leave the pertension at home and just relax.", price: "€€", neighborhood: "Ribeira", sunday:"Closed", monday:"12h - 16h & 20h - 24h", tuesday:"12h - 16h & 20h - 24h", wednesday:"12h - 16h & 20h - 24h", thursday:"12h - 16h & 20h - 24h", friday:"12h - 16h & 20h - 01h", saturday:"12h - 16h & 20h - 01h",
      cuisine: Cuisine.create([
                {name: 'Portuguese'},
                {name: 'Wine Bar'}]))
prova.save!

comer = Restaurant.new(name: "Comer e Chorar por Mais", address: "Rua Formosa 300, 4000-049 Porto", food_rec: "The spicy chorizo and the serra de Estrela cheese make for wonderful gifts an the perfect ingredients for a snack or picnic", wine_rec: "If enjoying by day, a light vinho verde. If in the evening or during the winter warm yourself with a Douro Red", description: "Make room in your suitcase! This is Disneyland for Portuguese food lovers.", price: "€€€", neighborhood: "Bolhao", sunday:"Closed", monday:"12h - 16h & 20h - 24h", tuesday:"12h - 16h & 20h - 24h", wednesday:"12h - 16h & 20h - 24h", thursday:"12h - 16h & 20h - 24h", friday:"12h - 16h & 20h - 01h", saturday:"12h - 16h & 20h - 01h",
      cuisine: Cuisine.create([
                {name: 'Portuguese'},
                {name: 'Shop'}]))
comer.save!

belos = Restaurant.new(name: "Belos Aires", address: "Rua de Belomonte 104, 4050-600 Porto", food_rec: "We highly recommend you start with a variety of the empanadas. That is just to start from there we recommend you move on to the ossobuco served with homemade tagliatelle pasta or for the real carnivors, do not miss the ribeye steak. We adore the chimichurri sauce that comes with it and always ask for extra! But make sure you save room for the Dulce de Leche pancakes for dessert.", wine_rec: "If enjoying the beautifully prepared meat of this location, you cannot go wrong with their Malbac. Import from Argentina this bold red balances beautifully with the red meat.", description: "You probably did not think to come to Porto to enjoy Argentinian steaks, but we cannot not recommend this place. Chef Mauricio is orginally from Buenos Aires, but love brought him to Portugal, where he know shares his passion for Argentina with all of us! And we know it may seem strange, but they also have a great breakfast offering.", price: "€€", neighborhood: "Baixa", sunday:"Closed", monday:"12h - 16h & 20h - 24h", tuesday:"12h - 16h & 20h - 24h", wednesday:"12h - 16h & 20h - 24h", thursday:"12h - 16h & 20h - 24h", friday:"12h - 16h & 20h - 01h", saturday:"12h - 16h & 20h - 01h",
      cuisine: Cuisine.create([
                {name: 'International'},
                {name: 'Argentinian'},
                {name: 'Breakfast'}]))
belos.save!

trasca = Restaurant.new(name: "Trasca", address: "Rua de Trás 16, Porto", food_rec: "Since petiscos is all about enjoying lots and sharing, we recommend you get at least 5 plates for two people. Our favorites include alheira (game meat sausage), sabe o pato (duck), camembert dourado, the spread of cheeses and of course one of their delicious toastas.", wine_rec: "We recommend washing this all down either the artisinal beer called Nortade or with a beautiful glass of red wine for the Alentejo region.", description: "This cosy spot is know for its petiscos, small plates perfect for sharing and trying lots of things in on sitting. The kitchen is right in the heart of this small restaurant allowing you to enjoy the action with friendly owners and staff. There are also plenty of good vegetarian options.", price: "€", neighborhood: "Baixa", sunday:"Closed", monday:"12h - 16h & 20h - 24h", tuesday:"12h - 16h & 20h - 24h", wednesday:"12h - 16h & 20h - 24h", thursday:"12h - 16h & 20h - 24h", friday:"12h - 16h & 20h - 01h", saturday:"12h - 16h & 20h - 01h",
      cuisine: Cuisine.create([
                {name: 'Petiscos'},
                {name: 'Portuguese'},
                {name: 'Small plates'},
                {name: 'Sharing'}]))
trasca.save!

p "Seeded"



