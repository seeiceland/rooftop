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


Roof.create!( name: 'Tlv_roof', location: 'tel aviv', price: 5, user: random_user)
Roof.create!( name: 'Florentin', location: 'tel aviv', price: 15, user: random_user )
Roof.create!( name: 'Rotchild', location: 'tel aviv', price: 25, user: random_user )
Roof.create!( name: 'Roof on the beach', location: 'tel aviv', price: 30, user: random_user )
Roof.create!( name: 'dizengoff rooftop', location: 'tel aviv', price: 20, user: random_user )

puts "Created #{Roof.count} rooftops!"

