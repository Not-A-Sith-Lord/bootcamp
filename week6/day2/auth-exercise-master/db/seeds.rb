# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: 'Ignacio', email: 'hola@ignaciovaldes.me', password: "lol", password_confirmation: "lol")
User.create!(username: 'Alexandra', email: 'alechen04@gmail.com', password: "lol", password_confirmation: "lol")
User.create!(username: 'Aram', email: 'aram@berkeley.edu', password: "lol", password_confirmation: "lol")
User.create!(username: 'Maria', email: 'unamaria@gmail.com', password: "lol", password_confirmation: "lol")


 # a = User.find_by(email: "elliot@gmail.com")
 # a.update(role: "admin")

 User.create!(
 	username: "Nick Borbe",
 	email: "Nick@ironhack.com",
 	password: "whatever",
 	password_confirmation: "whatever",
 	role: "admin")

 User.create!(
 	username: "elliot",
 	email: "elliot@gmail.com",
 	password: "12345",
 	password_confirmation: "12345",)