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
users4 = User.create(first_name: 'Lila', last_name: 'Obama', email:'lila@yahoo.com', password: "123456", address:"Royal road Cap Malhereux" )
users4.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/ass.jpg')), filename: 'ass.jpg')
users5 = User.create(first_name: 'Sanjay', last_name: 'Pfizer', email:'pfizer@yahoo.com', password: "123456", address:"Royal road Baie du Cap" )
users5.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users6 = User.create(first_name: 'Barck', last_name: 'Obama', email:'obama@yahoo.com', password: "123456", address:"Flower Road Gris Gris" )
users6.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users7 = User.create(first_name: 'Petit', last_name: 'Chat', email:'chat@yahoo.com', password: "123456", address:"Grand Riviere" )
users7.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users8 = User.create(first_name: 'Rose', last_name: 'Marie', email:'Marie@yahoo.com', password: "123456", address:"Tamarin Waterfalls" )
users8.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')



handymen1 = Handyman.create(job_title: 'Plumber', average_price: '500',availability: true, user_id: users1.id, address: 'RQ2J+9W Quatre Cocos, Mauritius')
handymen2 = Handyman.create(job_title: 'Electrician', average_price: '250',availability: true, user_id: users2.id, address: '21 Mère Barthélemy St, Port Louis, Mauritius')
handymen3 = Handyman.create(job_title: 'Gardener', average_price: '250',availability: true, user_id: users3.id, address: '21 Mère Barthélemy St, Port Louis, Mauritius')
handymen4 = Handyman.create(job_title: 'Macon', average_price: '1250',availability: true, user_id: users4.id, address: '153, route Ménagerie, Cassis, Mauritius')

 
missions1 = Mission.new(start_date: Date.new(2009,9,14), user_id: users5.id, description: 'To fix my running tab', handyman_id: handymen1.id)
missions1.save!
missions2 = Mission.new(start_date: Date.new(2009,9,14), user_id: users6.id, description: 'To fix a bulb', handyman_id: handymen2.id)
missions2.save!
missions3 = Mission.new(start_date: Date.new(2009,9,14), user_id: users7.id, description: 'To change my tv cable', handyman_id: handymen3.id)
missions3.save!
missions4 = Mission.new(start_date: Date.new(2009,9,14), user_id: users8.id, description: 'To make some holes in my room', handyman_id: handymen4.id)
missions4.save!


quotation1 = Quotation.create(handyman_id: handymen1.id, handyman_description: "here is the solution", specific_price: 100.0, mission_id: missions1.id, status: "pending")
quotation2 = Quotation.create(handyman_id: handymen2.id, handyman_description: "lorem ipsum", specific_price: 200.0, mission_id: missions2.id, status: "pending")
quotation3 = Quotation.create(handyman_id: handymen3.id, handyman_description: "abcdefgh", specific_price: 300.0, mission_id: missions3.id, status: "pending")
quotation4 = Quotation.create(handyman_id: handymen4.id, handyman_description: "123456", specific_price: 247.0, mission_id: missions4.id, status: "pending")




puts "Finished"