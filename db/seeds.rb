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


neighborhood = Neighborhood.create([{name: 'Vitoria'}])

neighborhood.restaurants.create(name: "Flor dos Congregados", address: "Tv. dos Congregados 11, 4000-114 Porto", food_rec: "The sandwich is the best thing you will ever try", wine_rec: "Red espumanta", description: "A family run place with a cozy feel and slow food.",
    cuisine: Cuisine.create([
                {name: 'Portuguese'},
                {name: 'International'}]),
    )


p "Seeded"
