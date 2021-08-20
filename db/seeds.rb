require 'date'
#create seed for user and handyman
Quotation.destroy_all
Mission.destroy_all
Handyman.destroy_all
User.destroy_all


puts "start seed"

users1 = User.new(first_name: 'Kaveesh', last_name: 'Sunassee', email:'kaveesh@yahoo.com', password: "123456", address:"21 Labourdonnais St, Port Louis, Mauritius" )
users1.photo.attach(io: File.open(Rails.root.join('app/assets/images/boy.png')), filename: 'boy.png')
users1.save!
users2 = User.create(first_name: 'Priyanka', last_name: 'Kallee', email:'kallee@yahoo.com', password: "123456", address:"Royal Road Trois Boutiques, Triolet 21509, Mauritius" )
users2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users3 = User.create(first_name: 'Gael', last_name: 'Lamothe', email:'cloud@yahoo.com', password: "123456", address:"Mont Oreb Lane Pereybere, Mauritius" )
users3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/boy.png')), filename: 'boy.png')
users4 = User.create(first_name: 'Jean Claude', last_name: 'Barthélemy', email:'jclaude@yahoo.com', password: "123456", address:"Royal road Cap Malhereux" )
users4.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/ass.jpg')), filename: 'ass.jpg')
users5 = User.create(first_name: 'Sanjay', last_name: 'Gupta', email:'sanjay@yahoo.com', password: "123456", address:"Royal road Baie du Cap" )
users5.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users6 = User.create(first_name: 'Dev', last_name: 'Patel', email:'dev@yahoo.com', password: "123456", address:"Union Delcourt Street, Saint-Francois, Calodyne, Mauritius" )
users6.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users7 = User.create(first_name: 'David', last_name: 'Smith', email:'david@yahoo.com', password: "123456", address:"St Geran Street, Poudre d'Or, Mauritius" )
users7.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users8 = User.create(first_name: 'Kim', last_name: 'Sullivan', email:'kim@yahoo.com', password: "123456", address:"A6, Rivière du Rempart, Mauritius" )
users8.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users9 = User.create(first_name: 'Jordan', last_name: 'Bredford', email:'jordan@yahoo.com', password: "123456", address:"A6, Rivière du Rempart, Mauritius" )
users9.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users8 = User.create(first_name: 'Arnold', last_name: 'Palmer', email:'arnold@yahoo.com', password: "123456", address:"New road Roches noires, Roches Noires 31206, Mauritius" )
users8.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users8 = User.create(first_name: 'Kim', last_name: 'Sullivan', email:'kim@yahoo.com', password: "123456", address:"A6, Rivière du Rempart, Mauritius" )
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