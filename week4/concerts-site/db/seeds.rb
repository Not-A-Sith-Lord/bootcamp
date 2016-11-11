# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beyonce = Concert.create!(artist: "Beyonce", venue: "AA Arena", city: "Miami", date: Date.today, price: 100, description: "Oh, boy. It's Beyonce")
Drake = Concert.create!(artist: "Drake", venue: "FedEx Forum", city: "Memphis", date: Date.today, price: 80, description: "Drake is okay I guess")






