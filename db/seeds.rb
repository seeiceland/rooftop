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


Roof.create!( name: 'Dan Hotel Rooftop', location: 'Kaufmann 10, Tel-Aviv', price: 150, user: random_user)
Roof.create!( name: 'Speakeasy', location: 'Rothschild Blvd 24, Tel-Aviv', price: 15, user: random_user )
Roof.create!( name: 'Esperanto Rooftop', location: 'Beach, Tel-Aviv', price: 25, user: random_user )
Roof.create!( name: 'Beach view', location: 'Eliezer Peri 10, Tel-Aviv', price: 30, user: random_user )
Roof.create!( name: 'Polihouse', location: 'Nahalat Binyamin 1, Tel-Aviv', price: 20, user: random_user )
Roof.create!( name: 'Roof face to the beach', location: 'HaYarkon 115, Tel-Aviv', price: 30, user: random_user )
Roof.create!( name: 'Azrieli rooftop', location: 'Derech Menachem Begin 132, Tel-Aviv', price: 20, user: random_user )
Roof.create!( name: 'The prince', location: 'Nahalat Binyamin 18, Tel-Aviv', price: 30, user: random_user )

Roof.create!( name: 'Mamilla Hotel Lounge', location: 'Shlomo ha-Melekh 11, Jerusalem', price: 5, user: random_user)
Roof.create!( name: 'The Eucalyptus', location: 'Simtat Pelet 14, Jerusalem', price: 100, user: random_user )
Roof.create!( name: 'M-Yehuda Rooftop', location: 'Machane Yehuda 13, Jerusalem', price: 25, user: random_user )
Roof.create!( name: 'Kotel view', location: 'Ha-Kotel 12, Jerusalem', price: 60, user: random_user )
Roof.create!( name: 'Houserabbi', location: 'Ha-Yehudim 91, Jerusalem', price: 20, user: random_user )

Roof.create!( name: 'Kchatot Rooftop', location: 'Mafkura 1, Ashdod', price: 5, user: random_user)
Roof.create!( name: 'Speakehard', location: 'Menachem Begin Blvd 126, Ashdod', price: 15, user: random_user )
Roof.create!( name: 'Mall Rooftop', location: 'Big Fashion, Ashdod', price: 70, user: random_user )
Roof.create!( name: 'Yam-park view', location: 'Derech Eretz 8, Ashdod', price: 30, user: random_user )
Roof.create!( name: 'Ashdod coffee Roof', location: 'Onyon 5, Ashdod', price: 20, user: random_user )



puts "Created #{Roof.count} rooftops!"

