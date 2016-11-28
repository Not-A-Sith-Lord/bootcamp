# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

clark = User.create!(first_name: "clark", last_name: "kent", email: "clark@dailyplanet.com", password: "whatever", password_confirmation: "whatever")
tony = User.create!(first_name: "tony", last_name: "stark", email: "tony@stark.sexy.com", password: "whatever", password_confirmation: "whatever")
rick = User.create!(first_name: "rick", last_name: "grimes", email: "rick@zombies.co", password: "whatever", password_confirmation: "whatever")


clark.comics.create!(title: "watchmen", publisher: "vertigo")
clark.comics.create!(title: "walking dead", publisher: "planeta")

rick.comics.create!(title: "v for vendetta", publisher: "vertigo")
rick.comics.create!(title: "300", publisher: "norma")

tony.comics.create!(title: "the unbeatable squirrel girl", publisher: "marvel")
tony.comics.create!(title: "thunderbolts", publisher: "marvel")