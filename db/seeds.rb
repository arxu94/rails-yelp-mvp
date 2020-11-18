# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all restaurants"
Restaurant.destroy_all

puts "Starting seed..."
  10.times do
    r = Restaurant.create!(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_name,
      category: %w(chinese italian japanese french belgian).sample,
      )
    puts "Restaurant id #{r.id} created."
  end

  puts "Seeding done."
