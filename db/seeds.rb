# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

Lehippiechic = { name: "Lehippiechic", address: "2 quai de la Joliette", category: "french", phone_number: 066754667}
Mozzartpizza =  { name: "Mozzartpizza", address: "1 Rue Molière", category: "italian", phone_number: 0656654667}
Letapasrojas =  { name: "Letapasrojas", address: "23 rue d'Isoard, ", category: "belgian", phone_number: 065654667}
Lesiam =  { name: "Lesiam", address: "25 Promenade du Grand Large Pointe Rouge", category: "chinese", phone_number: 0650654667}
Koishi = { name: "Koishi", address: "25 rue Sainte", category: "japanese", phone_number: 0065054667}


[ Lehippiechic, Mozzartpizza, Letapasrojas, Lesiam, Koishi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"

end
puts "Finished!"
