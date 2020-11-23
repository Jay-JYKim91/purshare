# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user_one = User.new(first_name: "John", last_name:"last", address: "address")
# user_one.save

bag_one = Bag.new(name: "name", price: 24, brand: "brand", description: "asdfasdfasdfas", image: "https://media.gucci.com/style/DarkGray_Center_0_0_1200x1200/1594829703/476433_DSVRT_5729_001_050_0000_Light-GG.jpg")
bag_one.save

puts "#{Bag.count} finished"
