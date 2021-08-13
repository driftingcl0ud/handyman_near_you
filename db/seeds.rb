# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create seed for user and handyman
Handyman.destroy_all
User.destroy_all

puts "start seed"

users1 = User.create(first_name: 'Kaveesh', last_name: 'Sinopharm', email:'kaveesh@yahoo.com', password: "123456", address:"Royal road curepipe" )
users2 = User.create(first_name: 'Priyanka', last_name: 'Kallee', email:'kallee@hotmail.com', password: "123456", address:"Flic en Flac" )
users3 = User.create(first_name: 'Drifting', last_name: 'Cloud', email:'cloud@yahoo.com', password: "123456", address:"Beau Bassin" )

handymen1 = Handyman.create(job_title: 'Plumber', average_price: '500',availability: true, user_id: users1.id, address: 'RQ2J+9W Quatre Cocos, Mauritius')
handymen2 = Handyman.create(job_title: 'Electrician', average_price: '250',availability: true, user_id: users2.id, address: '21 Mère Barthélemy St, Port Louis, Mauritius')
handymen3 = Handyman.create(job_title: 'Gardener', average_price: '250',availability: true, user_id: users3.id, address: '21 Mère Barthélemy St, Port Louis, Mauritius')
# handymen4 = Handyman.create(job_title: 'Macon', average_price: '250',availability: true, user_id: users4.id, address: '21 Mère Barthélemy St, Port Louis, Mauritius')



puts "Finished"