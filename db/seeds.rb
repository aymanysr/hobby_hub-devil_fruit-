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

afafe = User.create!(
  username: Faker::FunnyName.name,
  email: "afafe@test.com",
  password: "123456"
)

aymen = User.create!(
  username: Faker::FunnyName.name,
  email: "aymen@test.com",
  password: "123456"
)

abdel = User.create!(
  username: Faker::FunnyName.name,
  email: "abdel@test.com",
  password: "123456"
)

amine = User.create!(
  username: Faker::FunnyName.name,
  email: "amine@test.com",
  password: "123456"
)

emma = User.create!(
  username: Faker::FunnyName.name,
  email: "emma@test.com",
  password: "123456"
)

ShoppingCart.create!(
  user_id: emma.id,
  is_full?: false
)

ShoppingCart.create!(
  user_id: amine.id,
  is_full?: false
)

ShoppingCart.create!(
  user_id: abdel.id,
  is_full?: false
)

ShoppingCart.create!(
  user_id: aymen.id,
  is_full?: false
)

ShoppingCart.create!(
  user_id: afafe.id,
  is_full?: false
)

puts "Created #{User.count} Users! 🍒:"

50.times do
  DevilFruit.create!(
    user_id: User.last,
    name: Faker::JapaneseMedia::OnePiece.akuma_no_mi,
    description: Faker::Lorem.paragraph,
    price: rand(0..100),
    status: 1
  )
end

CartItem.create(
  shopping_cart_id: emma.shopping_cart.id,
  devil_fruit_id: DevilFruit.last.id
)

CartItem.create(
  shopping_cart_id: ShoppingCart.last,
  devil_fruit_id: DevilFruit.last.id
)

puts "Total number of dragon fruits: #{DevilFruit.all.count}"
puts 'Finished!🍌'
