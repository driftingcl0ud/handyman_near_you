require 'date'
#create seed for user and handyman
Quotation.destroy_all
Mission.destroy_all
Handyman.destroy_all
User.destroy_all


puts "start seed"

users1 = User.new(first_name: 'Kaveesh', last_name: 'Sunassee', email:'kaveesh@yahoo.com', password: "123456", address:"21 Labourdonnais St, Port Louis, Mauritius" )
users1.photo.attach(io: File.open(Rails.root.join('app/assets/images/electrician-profile-01.jpg')), filename: 'electrician-profile-01.jpg')
users1.save!
users2 = User.create(first_name: 'Gael', last_name: 'Lamothe', email:'gael@yahoo.com', password: "123456", address:"Royal Road Trois Boutiques, Triolet 21509, Mauritius" )
users2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/profile-picture-1.jpg')), filename: 'profile-picture-1.jpg')
users3 = User.create(first_name: 'Priyanka', last_name: 'Kallee', email:'kallee@yahoo.com', password: "123456", address:"Mont Oreb Lane Pereybere, Mauritius" )
users3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/boy.png')), filename: 'boy.png')
users4 = User.create(first_name: 'Jean Claude', last_name: 'Barthélemy', email:'jclaude@yahoo.com', password: "123456", address:"Royal road Cap Malhereux, Mauritius" )
users4.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/ass.jpg')), filename: 'boy.png')
users5 = User.create(first_name: 'Sanjay', last_name: 'Gupta', email:'sanjay@yahoo.com', password: "123456", address:"Royal road Baie du Cap, Mauritius" )
users5.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users6 = User.create(first_name: 'Dev', last_name: 'Patel', email:'dev@yahoo.com', password: "123456", address:"Union Delcourt Street, Saint-Francois, Calodyne, Mauritius" )
users6.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'boy.png')
users7 = User.create(first_name: 'David', last_name: 'Smith', email:'david@yahoo.com', password: "123456", address:"St Geran Street, Poudre d'Or, Mauritius" )
users7.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'boy.png')
users8 = User.create(first_name: 'Kim', last_name: 'Sullivan', email:'kim@yahoo.com', password: "123456", address:"A6, Rivière du Rempart, Mauritius" )
users8.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'girl.png')
users9 = User.create(first_name: 'Jordan', last_name: 'Bredford', email:'jordan@yahoo.com', password: "123456", address:"A6, Rivière du Rempart, Mauritius" )
users9.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'boy.png')
users10 = User.create(first_name: 'Arnold', last_name: 'Palmer', email:'arnold@yahoo.com', password: "123456", address:"New road Roches noires, Roches Noires 31206, Mauritius" )
users10.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'boy.png')
users11 = User.create(first_name: 'Bryan', last_name: 'Mayer', email:'bryan@yahoo.com', password: "123456", address:"176，royal road beau bassin MU, 71401, Mauritius" )
users11.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'boy.png')
users12 = User.create(first_name: 'Gordon', last_name: 'Ramsay', email:'gordon@yahoo.com', password: "123456", address:"Av. Remy Ollier, Quatre Bornes, Mauritius" )
users12.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'boy.png')
users13 = User.create(first_name: 'Jamie', last_name: 'Oliver', email:'jamie@yahoo.com', password: "123456", address:"Georges Guibert St, Vacoas-Phoenix, Mauritius" )
users13.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'boy.png')
users13 = User.create(first_name: 'Paul', last_name: 'Alexender', email:'paul@yahoo.com', password: "123456", address:"St Jean Round About, Quatre Bornes, Mauritius" )
users13.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'boy.png')
users13 = User.create(first_name: 'Marc', last_name: 'Jacobs', email:'marc@yahoo.com', password: "123456", address:"Union Delcourt Street, Saint-Francois, Calodyne, Mauritius" )
users13.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/girl.png')), filename: 'boy.png')


handymen1 = Handyman.create(job_title: 'Plumber', average_price: '500',availability: true, user_id: users1.id, address: '21 Labourdonnais St, Port Louis, Mauritius', description: 'Talented handyman with 7+ years of experience, skilled in light carpentry, plumbing, and electrical. Seeking position with Blue Egg Property Management. At PRPQ Partners, maintained 11 buildings with 10+ apartment units each. Handled light carpentry, electrical, and plumbing work and resolved an average of 30 resident issues per week. Received positive comments from 95% of residents and managers')
handymen2 = Handyman.create(job_title: 'Electrician', average_price: '250',availability: true, user_id: users2.id, address: 'Royal Road Trois Boutiques, Triolet 21509, Mauritius', description:'Handyman with more than 8 years experience conducting repairs on residential homes, apartments and offices. Skills include plumbing, masonry, painting, carpentry, electrical works and limited troubleshooting for air conditioning systems. I have knowledge on using MS Word, Excel and have a valid driver’s license. I hope to be considered for the job of Handyman at Brookestone Condominiums.')
handymen3 = Handyman.create(job_title: 'Gardener', average_price: '250',availability: true, user_id: users3.id, address: 'Mont Oreb Lane Pereybere, Mauritius', description:'Garderner in a famous hotel in the north of island. With more than 5years of experience. I use to do landscaping for big companies during my day off with some friends. Followed courses with Pierre de la Jardiner with is the Meilleur Ouvrier de France 2011 of Garderner')
handymen4 = Handyman.create(job_title: 'Carpenter', average_price: '250',availability: true, user_id: users4.id, address: 'Royal road Baie du Cap, Mauritius', description:'Self employee with 6 years of experience in the field of wood. Used to work for a big companies but now decided to work for myself. Alots of custmers are very happy with my job.')
handymen5 = Handyman.create(job_title: 'Aluminium Worker', average_price: '1250',availability: true, user_id: users5.id, address: 'Royal road Baie du Cap, Mauritius', description:'Self employee based in Baie du Cap. Used to work on big project like Bagatelle Mall, Le Wagon Mauritius, Airport of Mauritius.')
handymen6 = Handyman.create(job_title: 'Poseur de Marbre et de Carlage', average_price: '1250',availability: true, user_id: users6.id, address: 'Union Delcourt Street, Saint-Francois, Calodyne, Mauritius', description:'Helper on some project and but mostly work for myself. Some clients are very happy of my work!')
handymen7 = Handyman.create(job_title: 'Mécanicien', average_price: '1250',availability: true, user_id: users7.id, address: 'St Geran Street, Poudre d\'Or, Mauritius', description:'Used to work for a famous german automobile brand but know japanese brand system also. Used to help people around the island. I have my own garage in the city center.')
handymen8 = Handyman.create(job_title: 'Air Conditioner Technician', average_price: '1250',availability: true, user_id: users8.id, address: 'A6, Rivière du Rempart, Mauritius', description:'Air conditioner have no more secret for me. Work for myself since last year due to covid. ')
handymen9 = Handyman.create(job_title: 'Electrician', average_price: '1250',availability: true, user_id: users9.id, address: 'New road Roches noires, Roches Noires 31206, Mauritius', description:'Followed class at the IVTB of ebene gratuated in 2009 and work of a company in the city center.')
handymen10 = Handyman.create(job_title: 'Electrician', average_price: '1250',availability: true, user_id: users10.id, address: '176，royal road beau bassin MU, 71401, Mauritius', description:'I can work in Beau Bassin, Rose Hill, Port Louis very happy to help people I can be accessible mostly 7/7.')
handymen11 = Handyman.create(job_title: 'Plumber', average_price: '1250',availability: true, user_id: users11.id, address: 'Avenue Remy Ollier, Quatre Bornes, Mauritius', description:'Plumber in the region Quatre Bornes, Rose-Hill and Beau Bassin. Work for some prject like Bagatelle and La Croissette.')
handymen12 = Handyman.create(job_title: 'Mécanicien', average_price: '1250',availability: true, user_id: users12.id, address: 'Georges Guibert St, Vacoas-Phoenix, Mauritius', description:'BMW, Mercedes Benz or Jaquar don\'t have any secret for me anymore')



 
missions1 = Mission.new(start_date: Date.new(2009,9,14), user_id: users1.id, description: 'Can you please fix my faucet in my garden ', handyman_id: handymen1.id)
missions1.save!
missions2 = Mission.new(start_date: Date.new(2009,9,14), user_id: users3.id, description: 'Bought some lights and need to fix it in my tv room.', handyman_id: handymen2.id)
missions2.save!
missions3 = Mission.new(start_date: Date.new(2009,9,14), user_id: users4.id, description: 'Bought a new TV but i need some extention for the cable.', handyman_id: handymen2.id)
missions3.save!
missions4 = Mission.new(start_date: Date.new(2009,9,14), user_id: users5.id, description: 'Can you please me? I have an electrical issue in my kitchen. the plug was on fire.', handyman_id: handymen2.id)
missions4.save!
missions5 = Mission.new(start_date: Date.new(2009,9,14), user_id: users6.id, description: 'Can you please me? I have an electrical issue in my garden. the plug was on fire.', handyman_id: handymen2.id)
missions5.save!
missions6 = Mission.new(start_date: Date.new(2009,9,14), user_id: users7.id, description: 'Can you please me? I have an electrical issue in my room. the plug was on fire.', handyman_id: handymen2.id)
missions6.save!
missions7 = Mission.new(start_date: Date.new(2009,9,14), user_id: users8.id, description: 'Can you please me? I have an electrical issue in my kitchen. the plug was on fire.', handyman_id: handymen2.id)
missions7.save!
missions8 = Mission.new(start_date: Date.new(2009,9,14), user_id: users9.id, description: 'Can you please me? I have an electrical issue in my TV room. the plug was on fire.', handyman_id: handymen2.id)
missions8.save!
missions9 = Mission.new(start_date: Date.new(2009,9,14), user_id: users10.id, description: 'Can you please me? I have an electrical issue in my office. the plug was on fire.', handyman_id: handymen2.id)
missions9.save!
missions10 = Mission.new(start_date: Date.new(2009,9,14), user_id: users11.id, description: 'Can you please me? I have an electrical issue in my shop. the plug was on fire.', handyman_id: handymen2.id)
missions4.save!
missions10 = Mission.new(start_date: Date.new(2009,9,14), user_id: users12.id, description: 'Can you please me? I have an electrical issue in my apartment. the plug was on fire.', handyman_id: handymen2.id)
missions10.save!
missions11 = Mission.new(start_date: Date.new(2009,9,14), user_id: users13.id, description: 'Can you please me? I have an electrical issue in my house. the plug was on fire.', handyman_id: handymen2.id)
missions11.save!
missions12 = Mission.new(start_date: Date.new(2009,9,14), user_id: users1.id, description: 'Can you please me? I have an electrical issue in my house. the plug was on fire.', handyman_id: handymen2.id)
missions12.save!
missions13 = Mission.new(start_date: Date.new(2009,9,14), user_id: users8.id, description: 'Can you please me? I have an electrical issue in my apartment. the plug was on fire.', handyman_id: handymen2.id)
missions13.save!
missions14 = Mission.new(start_date: Date.new(2009,9,14), user_id: users9.id, description: 'Can you please me? I have an electrical issue in my office. the plug was on fire.', handyman_id: handymen2.id)
missions14.save!
missions15 = Mission.new(start_date: Date.new(2009,9,14), user_id: users5.id, description: 'Can you please me? I have an electrical issue in my office. the plug was on fire.', handyman_id: handymen2.id)
missions15.save!

quotation1 = Quotation.create(handyman_id: handymen2.id, handyman_description: "It will be Rs 1500 for the services. Rs 200 for the cable Rs 300 for the changing and Rs 1000 for the man power and transport", specific_price: 100.0, mission_id: missions2.id, status: "approve")
quotation2 = Quotation.create(handyman_id: handymen2.id, handyman_description: "It will be Rs 2500  for the services. Rs 300 for the cable Rs 400 for the changing and Rs 1100 for the man power and transport", specific_price: 100.0, mission_id: missions3.id, status: "approve")
quotation3 = Quotation.create(handyman_id: handymen2.id, handyman_description: "It will be Rs 3500 for the services. Rs 500 for the cable Rs 500 for the changing and Rs 2500 for the man power and transport", specific_price: 100.0, mission_id: missions4.id, status: "approve")
quotation4 = Quotation.create(handyman_id: handymen2.id, handyman_description: "It will be Rs 1200 for the services. Rs 200 for the cable and Rs 1000 for the man power and transport", specific_price: 100.0, mission_id: missions5.id, status: "approve")
quotation5 = Quotation.create(handyman_id: handymen2.id, handyman_description: "It will be Rs 3500 for the services. Rs 500 for the cable Rs 500 for the changing and Rs 2500 for the man power and transport", specific_price: 100.0, mission_id: missions6.id, status: "approve")
quotation6 = Quotation.create(handyman_id: handymen2.id, handyman_description: "It will be Rs 2500 for the services. Rs 500 for the cable Rs 500 for the changing and Rs 1500 for the man power and transport", specific_price: 200.0, mission_id: missions7.id, status: "pending")
quotation7 = Quotation.create(handyman_id: handymen2.id, handyman_description: "It will be Rs 3500 for the services. Rs 500 for the cable Rs 500 for the changing and Rs 2500 for the man power and transport", specific_price: 300.0, mission_id: missions8.id, status: "pending")
quotation8= Quotation.create(handyman_id: handymen2.id, handyman_description: "It will be Rs 3500 for the services. Rs 200 for the cable Rs 300 for the changing and Rs 1000 for the man power and transport", specific_price: 247.0, mission_id: missions9.id, status: "pending")

puts "Finished"