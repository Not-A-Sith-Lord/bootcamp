# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Alvin = User.create!(name: "Alvin", email: "alvin@email.com")
Tiffany = User.create!(name: "Tiffany", email: "tiffany@email.com")

cookies = Product.create!(title: "cookies", description: "chocolate-chip", deadline: Date.today + 4.days, user_id: Alvin.id)
pizza = Product.create!(title: "pizza", description: "pepperoni", deadline: Date.today + 5.days, user_id: Alvin.id)

yarn = Product.create!(title: "yarn", description: "green yarn", deadline: Date.today + 3.days, user_id: Tiffany.id)
string = Product.create!(title: "string", description: "red string", deadline: Date.today + 6.days, user_id: Tiffany.id)





