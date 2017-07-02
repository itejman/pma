# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  Coach.create! first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                age: Faker::Number.between(25, 40)
end

100.times do
  Player.create! first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                age: Faker::Number.between(25, 40),
                postion: Faker::Number.between(1, 11),
                growth: Faker::Number.between(174, 200),
end
