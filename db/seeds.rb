# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating flats'
4.times do
  flat = Flat.create!(
    name: "#{Faker::Dessert.flavor} #{Faker::Dessert.variety}",
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(20..120),
    number_of_guests: rand(1..6)
  )
  puts "Created #{flat.name}"
end
puts 'Finished!'
