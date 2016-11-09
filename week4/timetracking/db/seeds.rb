# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projectA = Project.create!(name: "first thing", description: "projecta stuff")
projectB = Project.create!(name: "second project", description: "things to do")
projectC = Project.create!(name: "third", description: "even more bullshit to do")
projectD = Project.create!(name: "fourth", description: "even more bullshit to do")
projectE = Project.create!(name: "fifth", description: "even more bullshit to do")
projectF = Project.create!(name: "sixth", description: "even more bullshit to do")
projectG = Project.create!(name: "seventh", description: "even more bullshit to do")
projectH = Project.create!(name: "eightth", description: "even more bullshit to do")
projectI = Project.create!(name: "ninth", description: "even more bullshit to do")
projectJ = Project.create!(name: "tenth", description: "even more bullshit to do")







TimeEntry.create!(hours:3, minutes: 30, comments: "ah, ah, ah", date: Date.today, project_id: projectA.id)
TimeEntry.create!(hours:2, minutes: 30, comments: "ahh", date: Date.today, project_id: projectA.id)
TimeEntry.create!(hours:1, minutes: 00, comments: "wutttt?!", date: Date.today - 2.days, project_id: projectA.id)


# same as ^
# projecta.time_entries.create(hours:2, minutes: 30, comments: "blah", date: Date.todad)
TimeEntry.create!(hours:2, minutes: 05, comments: "blah", date: Date.today, project_id: projectB.id)

TimeEntry.create!(hours:1, minutes: 45, comments: "clap", date: Date.today, project_id: projectC.id)
TimeEntry.create!(hours:1, minutes: 30, comments: "clap clap", date: Date.today, project_id: projectC.id)






