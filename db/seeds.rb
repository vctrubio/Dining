# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating databasse for users x 5"

Reservation.destroy_all
Restaurant.destroy_all
User.destroy_all

victor = User.create(
    username: "victor",
    email: "victor@gmail.com",
    password: "password"
)


cath = User.create(
    username: "cath",
    email: "cath@gmail.com",
    password: "password"
)

micheal = User.create(
    username: "micheal",
    email: "michealjackson@gmail.com",
    password: "password"
)

oreoorbitz = User.create(
    username: "oreoorbitz",
    email: "oreoorbitz@gmail.com",
    password: "password"
)

santiago = User.create(
    username: "santi",
    email: "santi@gmail.com",
    password: "password"
)


puts "Completed creating 5 new users"
puts "------------------------------"

puts "Now creating Restaurants"

puts "Now creating 20 restaurants"

12.times {
  restaurant = Restaurant.new(
    name: "#{Faker::Restaurant.name}",
    location: "#{Faker::Address.city}",
    open_hour: "13:00",
    close_hour: "23:00",
    user: cath,
    capacity: 10,
    )
  restaurant.save!
}

12.times {
  restaurant = Restaurant.new(
    name: "#{Faker::Restaurant.name}",
    location: "#{Faker::Address.city}",
    open_hour: "13:00",
    close_hour: "23:00",
    user: oreoorbitz,
    capacity: 10,
    )
  restaurant.save!
}

puts "Now finished creating 20 restaurants"

