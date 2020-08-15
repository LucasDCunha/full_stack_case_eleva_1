require 'faker'

Group.delete_all
School.delete_all

10.times do
  school = School.create(name: Faker::Movies::LordOfTheRings.character,
                          address: Faker::Address.street_address,
                          city: Faker::Address.city)
  10.times do
    school.groups << Group.create(name: rand(1..99))
  end

end

puts "seeding complete"
