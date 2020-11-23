# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create(
  email: "jj@gmail.com",
  password: "lewagon"
)

Bag.create(
  name:"MEDIUM LADY DIOR BAG",
  brand: "DIOR",
  price:4900,
  description: "A timeless and unique work of art, the Lady Dior bag is imbued with the Couture spirit of Dior. Meticulously crafted by hand, this black lambskin bag is enhanced by iconic Dior 'Cannage' stitching. It can be carried by hand or worn on the shoulder for unrivalled elegance.",
  image:"/assets/dior.jpg",
  user: user1
  )

Bag.create(
  name:"ONTHEGO GM",
  brand: "LOUIS VUITTON",
  price:2690,
  description: "Fashioned from Monogram Giant canvas, the Onthego tote bag is as striking as it is practical. A Monogram Reverse pattern on the sides and handles creates a stylish contrast in color and scale. With its generous capacity, shoulder straps and iconic Toron top handles, this versatile GM model is an ideal bag for everyday wear.",
  user: user1,
  image:"/assets/louis-vuitton.jpg"
  )

Bag.create(
  name:"OPIDIA GG SMALL BAG",
  brand: "GUCCI",
  price:2000,
  description: "Gucci pays homage to their rich Italian heritage through iconic elements from the brand’s archives. The creative director explores new, modern paths to achieve this goal. Crafted from GG Supreme canvas, this small Ophidia GG shoulder bag from Gucci features an adjustable shoulder strap, a top zip fastening, a green and red Web, a metal Double G, gold-tone hardware, leather trims, internal slip pockets and Double G charms.",
  user: user1,
  image:"/assets/gucci.jpg"
  )

>>>>>>> bceaad77c9e82638bcf2dd4ee1fdb3d87955661d
