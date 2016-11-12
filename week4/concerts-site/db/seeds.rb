# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beyonce = Concert.create!(artist: "Beyonce", venue: "AA Arena", city: "Miami", date: Date.today, price: 100, description: "Oh, boy. It's Beyonce")
Drake = Concert.create!(artist: "Drake", venue: "Collesium", city: "Toronto", date: Date.today, price: 80, description: "Drake is okay I guess")
PinkFloyd = Concert.create!(artist: "Pink Floyd", venue: "FedEx Forum", city: "Memphis", date: Date.today + 1.month, price: 500, description: "Greatest thing ever")
TaylorSwift = Concert.create!(artist: "Taylor Swift", venue: "Grand ol Opry", city: "Nashville", date: Date.today + 1.week, price: 10, description: "Country is lame")

comment1 = Comment.create!(title: "Fun", content: "should be fun", concert_id: Beyonce.id)
comment2 = Comment.create!(title: "neato", content: "should be neat", concert_id: Beyonce.id)

comment3 = Comment.create!(title: "meh", content: "meh its okay i guess", concert_id: Drake.id)
comment4 = Comment.create!(title: "ok", content: "should be okay", concert_id: Drake.id)








