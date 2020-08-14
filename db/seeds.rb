# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

School.delete_all

10.times do
  school = School.create(name: Faker::Movies::LordOfTheRings.character)
  10.times do
    school.groups << Group.create(name: rand(1..99))
  end

end

puts "seeding complete"
