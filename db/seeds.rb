# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Roof.create!( name: 'Tlv_roof', location: 'tel aviv', price: 5, user_id: 1 )
Roof.create!( name: 'Florentin', location: 'tel aviv', price: 15, user_id: 2 )
Roof.create!( name: 'Rotchild', location: 'tel aviv', price: 25, user_id: 3 )
Roof.create!( name: 'Roof on the beach', location: 'tel aviv', price: 30, user_id: 1 )
Roof.create!( name: 'dizengoff rooftop', location: 'tel aviv', price: 20, user_id: 4 )


User.create!(email: 'alanglam@gmail.com', password: '123456')
User.create!(email: 'moshe@gmail.com', password: '123456')
User.create!(email: 'leah@gmail.com', password: '123456')
