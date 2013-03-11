# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


    User.create(first_name:'Chris', last_name:'Trombley', email:'chris@test.com', password:'Skater33')
    User.create(first_name:'Corey', last_name:'Trombley', email:'corey@test.com', password:'Skater33')
    User.create(email:'mike@test.com', password:'Skater33')
    User.create(email:'jim@test.com', password:'Skater33')
    User.create(email:'mark@test.com', password:'Skater33')
    User.create(email:'jane@test.com', password:'Skater33')