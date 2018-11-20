Roof.destroy_all
User.destroy_all

def random_user
  User.all.sample
end

10.times do
  User.create!(email: Faker::Internet.email, password: "123456")
end
User.create!(email: 'alanglam@gmail.com', password: '123456')
User.create!(email: 'moshe@gmail.com', password: '123456')
User.create!(email: 'leah@gmail.com', password: '123456')

puts "Created #{User.count} users!"


Roof.create!( name: 'Mamilla Hotel Rooftop Lounge and Restaurant', location: 'Shlomo ha-Melekh 11, Tel-Aviv', price: 5, user: random_user)
Roof.create!( name: 'Speakeasy', location: 'Rothschild Blvd 24,Tel-Aviv', price: 15, user: random_user )
Roof.create!( name: 'Esperanto Rooftop', location: '14 Eliezer Peri,Tel-Aviv', price: 25, user: random_user )
Roof.create!( name: 'Beach view', location: 'Tel-Aviv', price: 30, user: random_user )
Roof.create!( name: 'Polihouse', location: 'Nahalat Binyamin St 1,Tel-Aviv', price: 20, user: random_user )
Roof.create!( name: 'Roof face to the beach', location: 'Tel-Aviv', price: 30, user: random_user )
Roof.create!( name: 'Azrieli rooftop', location: 'Tel-Aviv', price: 20, user: random_user )
Roof.create!( name: 'Benyehuda Street', location: 'Tel-Aviv', price: 30, user: random_user )

puts "Created #{Roof.count} rooftops!"

