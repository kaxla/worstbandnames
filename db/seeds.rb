# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@band1 = Bandname.create(name: "Oxygen Ponies",
                         approved: "true")
@band2 = Bandname.create(name: "Blue Floyd",
                         approved: "true")
@band3 = Bandname.create(name: "Pudding Attack",
                         approved: "true")
@band4 = Bandname.create(name: "Goth Brooks",
                         approved: "true")
@band5 = Bandname.create(name: "Majical Cloudz",
                         approved: "true")
@band6 = Bandname.create(name: "Dungeonesse",
                         approved: "true")
@band7 = Bandname.create(name: "The Front Bottoms",
                         approved: "true")
@band8 = Bandname.create(name: "Laminated Cat",
                         approved: "false")
@band9 = Bandname.create(name: "Stardeath and the White Dwarfs",
                         approved: "false")
@band10 = Bandname.create(name: "The Pigeon Detectives",
                         approved: "false")

@user = User.create(email: "user@user.com",
                    password: "password",
                    password_confirmation: "password",
                    role: "user")

@kayla = User.create(email: "kaylas.email.address@gmail.com",
                     password: "knittles",
                     password_confirmation: "knittles",
                     role: "admin")
