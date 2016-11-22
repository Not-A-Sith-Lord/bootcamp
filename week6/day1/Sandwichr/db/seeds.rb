# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sandwich1 = Sandwich.create!(name: "salami", bread_type: "hoagie")
sandwich2 = Sandwich.create!(name: "steak", bread_type: "donut")

pepperoni = Ingredient.create!(name: "pepperoni", calories: 100)
friedChicken = Ingredient.create!(name: "fried chicken", calories: 200)
cheese = Ingredient.create!(name: "Cheese", calories: 50)