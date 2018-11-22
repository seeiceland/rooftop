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
  name: 'Dan Hotel Rooftop Lounge',
  location: 'Shlomo ha-Melekh 11, Tel-Aviv',
  price: 5,
  user: random_user,
  remote_photo_url: 'https://images.unsplash.com/photo-1452509133926-2b180c6d6245?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=af999222be587d4979a4f0de62ce9ef5&auto=format&fit=crop&w=2689&q=80'
})

Roof.create!(
  name: 'Speakeasy',
  location: 'Rothschild Blvd 24,Tel-Aviv',
  price: 15,
  user: random_user,
  remote_photo_url: 'https://images.unsplash.com/photo-1479356558243-f9d175b1abea?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=97109f439e438b7c3f7648fdc42afd02&auto=format&fit=crop&w=1489&q=80'
  )

Roof.create!( name: 'Esperanto Rooftop',
  location: 'Beach 14, Tel-Aviv',
  price: 25,
  user: random_user,
  remote_photo_url: 'https://www.thatsalltrends.com/wp-content/uploads/2017/10/rooftop-_-migliori-rooftop.jpg'
  )

Roof.create!( name: 'The Prince',
  location: 'Eliezer Peri 10, Tel-Aviv',
  price: 30,
  user: random_user,
  remote_photo_url: 'https://images.unsplash.com/photo-1463414689943-2aca18b2242b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f24df5efb21c19a3a6bc5fe2344a620d&auto=format&fit=crop&w=1489&q=80'
  )

Roof.create!( name: 'Polihouse',
  location: 'Nahalat Binyamin 1,Tel-Aviv',
  price: 20,
  user: random_user,
  remote_photo_url: 'https://images.unsplash.com/photo-1493246318656-5bfd4cfb29b8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c4bea0ea38ef1de8e0f23a0a7f9cec8d&auto=format&fit=crop&w=1350&q=80'
  )

Roof.create!(
  name: 'Roof face to the beach',
  location: 'HaYarkon 115, Tel-Aviv',
  price: 30,
  user: random_user,
  remote_photo_url: 'https://www.touristisrael.com/wp-content/uploads/15271610985b06a10ac49b5132187.jpg'
  )

Roof.create!(
  name: 'Azrieli rooftop',
  location: 'Derech Menachem Begin 132, Tel-Aviv',
  price: 20,
  user: random_user,
  remote_photo_url: 'https://az760333.vo.msecnd.net/-/media/property/quirk-hotel/dining/q-rooftop_1-crpd1440x960.jpg?ts=1dc8e147-8919-4454-a731-19b60b6c194e'
  )

Roof.create!(
  name: 'Benyehuda Street',
  location: 'HaYarkon 41, Tel-Aviv',
  price: 30,
  user: random_user,
  remote_photo_url: 'https://zero-media.s3.amazonaws.com/uploads/2017/06/lagare-rooftop-bar.jpg'
  )




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


