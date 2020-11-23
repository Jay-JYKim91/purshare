# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Bag.destroy_all
User.destroy_all

user1 = User.create(
  email: "ssggg@gmail.com",
  password: "lewagon"
)

bag1 = Bag.new(
  name:"OPIDIA GG SMALL BAG",
  brand: "GUCCI",
  price:2000,
  description: "Gucci pays homage to their rich Italian heritage through iconic elements from the brand’s archives. The creative director explores new, modern paths to achieve this goal. Crafted from GG Supreme canvas, this small Ophidia GG shoulder bag from Gucci features an adjustable shoulder strap, a top zip fastening, a green and red Web, a metal Double G, gold-tone hardware, leather trims, internal slip pockets and Double G charms.",
  user: user1
  )

  file = URI.open('https://cdn-images.farfetch-contents.com/12/56/25/66/12562566_11923829_1000.jpg')
  bag1.image.attach(io: file, filename: 'gucci.png', content_type: 'image/png')
  bag1.save!


  bag2 = Bag.new(
  name:"MEDIUM LADY DIOR BAG",
  brand: "DIOR",
  price:4900,
  description: "A timeless and unique work of art, the Lady Dior bag is imbued with the Couture spirit of Dior. Meticulously crafted by hand, this black lambskin bag is enhanced by iconic Dior 'Cannage' stitching. It can be carried by hand or worn on the shoulder for unrivalled elegance.",
  user: user1
  )

  file = URI.open('https://images.unsplash.com/photo-1548036328-c9fa89d128fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80')
  bag2.image.attach(io: file, filename: 'lv.png', content_type: 'image/png')
  bag2.save!


bag3 = Bag.new(
  name:"ONTHEGO GM",
  brand: "LOUIS VUITTON",
  price:2690,
  description: "Fashioned from Monogram Giant canvas, the Onthego tote bag is as striking as it is practical. A Monogram Reverse pattern on the sides and handles creates a stylish contrast in color and scale. With its generous capacity, shoulder straps and iconic Toron top handles, this versatile GM model is an ideal bag for everyday wear.",
  user: user1
  )

  file = URI.open('https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80')
  bag3.image.attach(io: file, filename: 'dior.png', content_type: 'image/png')
  bag3.save!
