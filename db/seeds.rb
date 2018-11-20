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


Roof.create!( name: 'Best Tlv', location: 'Tel-Aviv', price: 5, user: random_user)
Roof.create!( name: 'Florentin', location: 'Tel-Aviv', price: 15, user: random_user )
Roof.create!( name: 'Rotchild', location: 'Tel-Aviv', price: 25, user: random_user )
Roof.create!( name: 'Beach view', location: 'Tel-Aviv', price: 30, user: random_user )
Roof.create!( name: 'Dizengoff rooftop', location: 'Tel-Aviv', price: 20, user: random_user )
Roof.create!( name: 'Roof face to the beach', location: 'Tel-Aviv', price: 30, user: random_user )
Roof.create!( name: 'Azrieli rooftop', location: 'Tel-Aviv', price: 20, user: random_user )
Roof.create!( name: 'Benyehuda Street', location: 'Tel-Aviv', price: 30, user: random_user )

puts "Created #{Roof.count} rooftops!"

