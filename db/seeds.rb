# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  User.create(first_name:'Corey', last_name:'Trombley', email:'corey@test.com', password:'password')

  100.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:'password')

    Project.create(name: Faker::Company.catch_phrase, description: Faker::Company.bs, user_id: rand(1..100) )
  end