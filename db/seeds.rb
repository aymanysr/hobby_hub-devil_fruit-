# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning Database!🫧'

# Devil Fruits
User.destroy_all
ShoppingCart.destroy_all
DevilFruit.destroy_all
CartItem.destroy_all

puts 'Database is clean!🧼'

shopping_cart_one = ShoppingCart.create!(
  is_full?: false
)

afafe = User.create!(
  username: Faker::FunnyName.name,
  email: "afafe@test.com",
  password: "123456"
)

User.create!(
  username: Faker::FunnyName.name,
  email: "aymen@test.com",
  password: "123456"
)

User.create!(
  username: Faker::FunnyName.name,
  email: "abdel@test.com",
  password: "123456"
)

User.create!(
  username: Faker::FunnyName.name,
  email: "amine@test.com",
  password: "123456"
)

User.create!(
  username: Faker::FunnyName.name,
  email: "emma@test.com",
  password: "123456"
)

puts 'Created #{User.count} Users! :femme_haussant_les_épaules:'

50.times do
  DevilFruit.create!(
    user_id: User.last,
    name: Faker::JapaneseMedia::OnePiece.akuma_no_mi,
    description: Faker::Lorem.paragraph,
    price: 1,
    status: 1
  )
end

CartItem.create(
  shopping_cart_id: ShoppingCart.last,
  devil_fruit_id: DevilFruit.last
)

CartItem.create(
  shopping_cart_id: ShoppingCart.last,
  devil_fruit_id: DevilFruit.last
)

puts "Total number of dragon fruits: #{DevilFruit.all.count}"
# require 'faker'

# puts 'creating 10 fake devil fruits'

# 10.times do
#   devil = Restaurant.new(
#     name:    Faker::Company.name,
#     description: Faker::Lorem.paragraph(sentence_count: 2),
#     price:  rand(0..100)
#     status:
#   )
#   restaurant.save!
# end
# puts 'Finished!'
