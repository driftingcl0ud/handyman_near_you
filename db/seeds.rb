require 'date'
#create seed for user and handyman
Mission.destroy_all
Handyman.destroy_all
User.destroy_all


puts "start seed"

users1 = User.create(first_name: 'Kaveesh', last_name: 'Sinopharm', email:'kaveesh@yahoo.com', password: "123456", address:"Royal road curepipe" )
users1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/ass.jpg')), filename: 'ass.jpg')
users2 = User.create(first_name: 'Priyanka', last_name: 'Kallee', email:'kallee@hotmail.com', password: "123456", address:"Flic en Flac" )
users2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users3 = User.create(first_name: 'Drifting', last_name: 'Cloud', email:'cloud@yahoo.com', password: "123456", address:"Beau Bassin" )
users3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/boy.png')), filename: 'boy.png')

handymen1 = Handyman.create(job_title: 'Plumber', average_price: '500',availability: true, user_id: users1.id, address: 'RQ2J+9W Quatre Cocos, Mauritius')
handymen2 = Handyman.create(job_title: 'Electrician', average_price: '250',availability: true, user_id: users2.id, address: '21 Mère Barthélemy St, Port Louis, Mauritius')
handymen3 = Handyman.create(job_title: 'Gardener', average_price: '250',availability: true, user_id: users3.id, address: '21 Mère Barthélemy St, Port Louis, Mauritius')
handymen4 = Handyman.create(job_title: 'Macon', average_price: '1250',availability: true, user_id: users3.id, address: '153, route Ménagerie, Cassis, Mauritius')
handymen5 = Handyman.create(job_title: 'Plumber', average_price: '50',availability: true, user_id: users2.id, address: '52 Dupont Street, Beau Bassin, Mauritius')
handymen6 = Handyman.create(job_title: 'Electrician', average_price: '530',availability: true, user_id: users1.id, address: '31, Latham Koenig Street, Beau Bassin, Mauritius')
handymen7 = Handyman.create(job_title: 'Macon', average_price: '6000',availability: true, user_id: users3.id, address: '53 Avenue Panchoo, Trefles,Rose Hill, Mauritius')
handymen8 = Handyman.create(job_title: 'Electrician', average_price: '10',availability: true, user_id: users2.id, address: '226 Royal Road, Beau Bassin, Mauritius')


missions1 = Mission.new(start_date: Date.new(2009,9,14), user_id: users2.id, description: 'To fix my running tab')
missions1.save
missions2 = Mission.new(start_date: Date.new(2009,9,14), user_id: users1.id, description: 'To fix a bulb')
missions2.save
missions3 = Mission.new(start_date: Date.new(2009,9,14), user_id: users3.id, description: 'To change my tv cable')
missions3.save
missions4 = Mission.new(start_date: Date.new(2009,9,14), user_id: users1.id, description: 'To make some holes in my room')
missions4.save
missions5 = Mission.new(start_date: Date.new(2009,9,14), user_id: users2.id, description: 'To regulerate my shower')
missions5.save







puts "Finished"