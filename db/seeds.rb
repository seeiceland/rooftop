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



Roof.create!({
  name: 'Mamilla Hotel Rooftop Lounge and Restaurant',
  location: 'Shlomo ha-Melekh 11, Tel-Aviv',
  price: 5,
  user: random_user,
  remote_photo_url: 'https://images.unsplash.com/photo-1493246318656-5bfd4cfb29b8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c4bea0ea38ef1de8e0f23a0a7f9cec8d&auto=format&fit=crop&w=750&q=80'
})
Roof.create!( name: 'Speakeasy', location: 'Rothschild Blvd 24,Tel-Aviv', price: 15, user: random_user, remote_photo_url: 'https://images.unsplash.com/photo-1535935353505-a05186766004?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=128ea8191d6008d104abaf0a0506cdfa&auto=format&fit=crop&w=334&q=80' )
Roof.create!( name: 'Esperanto Rooftop', location: '14 Beach, Tel-Aviv', price: 25, user: random_user, remote_photo_url: 'https://www.thatsalltrends.com/wp-content/uploads/2017/10/rooftop-_-migliori-rooftop.jpg' )
Roof.create!( name: 'Beach view', location: 'Eliezer Peri 10, Tel-Aviv', price: 30, user: random_user, remote_photo_url: 'https://images.unsplash.com/photo-1502977601689-3671ddf792b7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3ba4a011207ddc96aff2b8dea81538c5&auto=format&fit=crop&w=334&q=80' )
Roof.create!( name: 'Polihouse', location: 'Nahalat Binyamin St 1,Tel-Aviv', price: 20, user: random_user,  remote_photo_url: 'https://images.unsplash.com/photo-1517356382738-e5f6d7828d84?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=23aed1689a141ce0d5a0b3bfd511abce&auto=format&fit=crop&w=334&q=80' )
Roof.create!( name: 'Roof face to the beach', location: 'HaYarkon 115, Tel-Aviv', price: 30, user: random_user,  remote_photo_url: 'https://images.unsplash.com/photo-1513279922550-250c2129b13a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5ab44925abfac230b479589e22b1cc50&auto=format&fit=crop&w=750&q=80' )
Roof.create!( name: 'Azrieli rooftop', location: 'Derech Menachem Begin 132, Tel-Aviv', price: 20, user: random_user, remote_photo_url: 'https://images.unsplash.com/photo-1498378520120-901cc2e4547e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d3738c26c7b955003d03ea45f4536015&auto=format&fit=crop&w=753&q=80' )
Roof.create!( name: 'Benyehuda Street', location: 'HaYarkon 41, Tel-Aviv', price: 30, user: random_user, remote_photo_url: 'https://images.unsplash.com/photo-1483090858014-15e35bb60ea5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=30103cd1fe3ff7fe3f78446cdd87e901&auto=format&fit=crop&w=333&q=80' )

# Roof.create!( name: 'Dan Hotel Rooftop', location: 'Kaufmann 10, Tel-Aviv', price: 150, user: random_user)
# Roof.create!( name: 'The prince', location: 'Nahalat Binyamin 18, Tel-Aviv', price: 30, user: random_user )

# Roof.create!( name: 'Mamilla Hotel Lounge', location: 'Shlomo ha-Melekh 11, Jerusalem', price: 5, user: random_user)
# Roof.create!( name: 'The Eucalyptus', location: 'Simtat Pelet 14, Jerusalem', price: 100, user: random_user )
# Roof.create!( name: 'M-Yehuda Rooftop', location: 'Machane Yehuda 13, Jerusalem', price: 25, user: random_user )
# Roof.create!( name: 'Kotel view', location: 'Ha-Kotel 12, Jerusalem', price: 60, user: random_user )
# Roof.create!( name: 'Houserabbi', location: 'Ha-Yehudim 91, Jerusalem', price: 20, user: random_user )

# Roof.create!( name: 'Kchatot Rooftop', location: 'Mafkura 1, Ashdod', price: 5, user: random_user)
# Roof.create!( name: 'Speakehard', location: 'Menachem Begin Blvd 126, Ashdod', price: 15, user: random_user )
# Roof.create!( name: 'Mall Rooftop', location: 'Big Fashion, Ashdod', price: 70, user: random_user )
# Roof.create!( name: 'Yam-park view', location: 'Derech Eretz 8, Ashdod', price: 30, user: random_user )
# Roof.create!( name: 'Ashdod coffee Roof', location: 'Onyon 5, Ashdod', price: 20, user: random_user )



puts "Created #{Roof.count} rooftops!"


