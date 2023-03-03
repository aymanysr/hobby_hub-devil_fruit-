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
              description: "The Gomu Gomu no Mi is a Paramecia-type Devil Fruit that grants the user's body the properties of rubber, effectively turning them into a Rubber Human.",
              price: 3_000_000_000,
              status: 1
              )
gomu_gomu.photo.attach(io: gomu_file, filename: "gomu_gomu_no_mi.png", content_type: "image/png")
gomu_gomu.save

mera_file = URI.open("https://mystickermania.com/cdn/stickers/anime/one-piece-mera-mera-no-mi-512x512.png")
mera_mera = DevilFruit.new(
              user_id: emma.id,
              name: "mera mera no mi",
              description: "The Mera Mera no Mi is a Logia-type Devil Fruit that allows the user to create, control, and transform into fire at will.",
              price: 1_500_000_000,
              status: 1
              )
mera_mera.photo.attach(io: mera_file, filename: "mera_mera_no_mi.png", content_type: "image/png")
mera_mera.save

yami_file = URI.open("https://static.wikia.nocookie.net/onepiece/images/3/3a/Yami_Yami_no_Mi_Fruit_episode_A.png/revision/latest?cb=20211203222118&path-prefix=fr")
yami_yami = DevilFruit.new(
              user_id: emma.id,
              name: "Yami yami no mi",
              description: "The Yami Yami no Mi is a Logia-Type Devil Fruit. This devil fruit allows the user to create and control darkness at will. This makes the person a Darkness Human.",
              price: 3_000_000_000,
              status: 1
              )
yami_yami.photo.attach(io: yami_file, filename: "yami_yami_no_mi.png", content_type: "image/png")
yami_yami.save

ope_file = URI.open("https://static.wikia.nocookie.net/onepiece/images/0/0e/Ope_Ope_no_Mi_Infobox.png/revision/latest/scale-to-width-down/350?cb=20210409181034")
ope_ope = DevilFruit.new(
              user_id: emma.id,
              name: "Ope ope no mi",
              description: 'The Ope Ope no Mi is a Paramecia-type Devil Fruit that grants the ability to manifest a spherical space in which the user can manipulate the orientation, movements, and physical configuration of anything and anyone (themselves included) in a "surgical" fashion, making the user a Free Modification Human.',
              price: 3_000_000_000,
              status: 1
              )
ope_ope.photo.attach(io: ope_file, filename: "ope_ope_no_mi.png", content_type: "image/png")
ope_ope.save

hito_file = URI.open("https://static.wikia.nocookie.net/onepiece/images/3/38/Hito_Hito_no_Mi_Infobox.png/revision/latest/scale-to-width-down/317?cb=20191228120250")
hito_hito = DevilFruit.new(
              user_id: emma.id,
              name: "Hito hito no mi",
              description: "The Hito Hito no Mi is a Zoan-type Devil Fruit that allows its user to transform into a human hybrid or a human at will.",
              price: 3_000_000_000,
              status: 1
              )
hito_hito.photo.attach(io: hito_file, filename: "hito_hito_no_mi.png", content_type: "image/png")
hito_hito.save

jiki_file = URI.open("https://static.wikia.nocookie.net/onepiece/images/1/13/Jiki_Jiki_no_Mi_Infobox.png/revision/latest/scale-to-width-down/350?cb=20220525022232r")
jiki_jiki = DevilFruit.new(
              user_id: emma.id,
              name: "Jiki Jiki no mi",
              description: "The Jiki Jiki no Mi is a Paramecia-type Devil Fruit which allows the user to create magnetic forces and use them to control metal.",
              price: 3_000_000_000,
              status: 1
              )
jiki_jiki.photo.attach(io: jiki_file, filename: "jiki_jiki_no_mi.png", content_type: "image/png")
jiki_jiki.save

yomi_file = URI.open("https://static.wikia.nocookie.net/onepiece/images/3/3b/Yomi_Yomi_no_Mi_Infobox.png/revision/latest/scale-to-width-down/350?cb=20201116170233")
yomi_yomi = DevilFruit.new(
              user_id: emma.id,
              name: "Yomi yomi no mi",
              description: "The Yomi Yomi no Mi is a Paramecia-type Devil Fruit which enhances the user's soul to the point where they resurrect after their first death, allowing them to live a second time and to use several other soul-based abilities, making the user a Reviving Human.",
              price: 3_000_000_000,
              status: 1
              )
yomi_yomi.photo.attach(io: yomi_file, filename: "yomi_yomi_no_mi.png", content_type: "image/png")
yomi_yomi.save

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
