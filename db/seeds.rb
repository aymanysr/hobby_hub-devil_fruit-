# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

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

gomu_file = URI.open("https://cdn.shopify.com/s/files/1/0556/3822/9043/files/Fruit001.png?v=1650868361")
gomu_gomu = DevilFruit.new(
              user_id: emma.id,
              name: "Gomu gomu no mi",
              description: Faker::Lorem.paragraph,
              price: 3_000_000_000,
              status: 1
              )
gomu_gomu.photo.attach(io: gomu_file, filename: "gomu_gomu_no_mi.png", content_type: "image/png")
gomu_gomu.save

mera_file = URI.open("https://mystickermania.com/cdn/stickers/anime/one-piece-mera-mera-no-mi-512x512.png")
mera_mera = DevilFruit.new(
              user_id: emma.id,
              name: "mera mera no mi",
              description: Faker::Lorem.paragraph,
              price: 1_500_000_000,
              status: 1
              )
mera_mera.photo.attach(io: mera_file, filename: "mera_mera_no_mi.png", content_type: "image/png")
mera_mera.save

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
