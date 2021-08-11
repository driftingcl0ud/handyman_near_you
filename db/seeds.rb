# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create seed for user and handyman

puts "start seed"

users1 = User.create(first_name: 'Kaveesh', last_name: 'Sinopharm', email:'kaveesh@yahoo.com', password: "123456", address:"Royal road curepipe" )
users2 = User.create(first_name: 'Priyanka', last_name: 'Kallee', email:'kallee@hotmail.com', password: "123456", address:"Flic en Flac" )
users3 = User.create(first_name: 'Drifting', last_name: 'Cloud', email:'cloud@yahoo.com', password: "123456", address:"Beau Bassin" )



puts "Finished"