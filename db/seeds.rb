# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating databasse for users x 5"
User.destroy_all

victor = User.create(
    username: "victor",
    email: "victor@gmail.com",
    password: "password",
    chef: false
)


cath = User.create(
    username: "cath",
    email: "cath@gmail.com",
    password: "password",
    chef: true
)

micheal = User.create(
    username: "micheal",
    email: "michealjackson@gmail.com",
    password: "password",
    chef: true
)

orio = User.create(
    username: "orio",
    email: "orio@gmail.com",
    password: "password",
    chef: true
)

santiago = User.create(
    username: "santi",
    email: "santi@gmail.com",
    password: "password",
    chef: true
)


puts "Completed creating 5 new users"
puts "------------------------------"

puts "Now creating Restaurants"

new_fondita = Restaurant.create(
    name: "La Nueva Fondita de mi Mama",
    location: "Campeche 234",
    open_hour: 11,
    close_hour: 23,
    user: orio,
    capacity: 10,
)

old_fondita = Restaurant.create(
    name: "La Antigua Casa de Juanita",
    location: "Campeche 101",
    open_hour: 12,
    close_hour: 23,
    user: santiago,
    capacity: 20,
)

recent_fondita = Restaurant.create(
    name: "four",
    location: "Roma norte",
    open_hour: 13,
    close_hour: 23,
    user: cath,
    capacity: 5,
)



puts "Now finished creating 3 restaurants"

10.times {
  restaurant = Restaurant.new(
    name: "#{Faker::Restaurant.name}",
    location: "#{Faker::Address.city}",
    open_hour: 13,
    close_hour: 23,
    user: cath,
    capacity: 10,
    )
  restaurant.save!
}
