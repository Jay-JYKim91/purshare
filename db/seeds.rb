require "open-uri"
require "date"

Booking.destroy_all
Bag.destroy_all
User.destroy_all

user1 = User.create(
  email: "jj@gmail.com",
  password: "lewagon",
  first_name: "John",
  last_name: "Smith",
  address: "seoul",
)

user2 = User.create(
  email: "test@gmail.com",
  password: "lewagon",
  first_name: "Sarah",
  last_name: "Kim",
  address: "LA",
)

user3 = User.create(
  email: "christine@gmail.com",
  password: "lewagon",
  first_name: "Christine",
  last_name: "Jung",
  address: "LA",
)

user4 = User.create(
  email: "harry@gmail.com",
  password: "lewagon",
  first_name: "Harry",
  last_name: "Kim",
  address: "LA",
)

user5 = User.create(
  email: "seyoung@gmail.com",
  password: "lewagon",
  first_name: "Seyoung",
  last_name: "Joo",
  address: "LA",
)


bag1 = Bag.new(
  name:"OPIDIA GG SMALL BAG",
  brand: "GUCCI",
  price: 2000,
  description: "Gucci pays homage to their rich Italian heritage through iconic elements from the brand’s archives. The creative director explores new, modern paths to achieve this goal. Crafted from GG Supreme canvas, this small Ophidia GG shoulder bag from Gucci features an adjustable shoulder strap, a top zip fastening, a green and red Web, a metal Double G, gold-tone hardware, leather trims, internal slip pockets and Double G charms.",
  user: user1
  )

  file = URI.open('https://cdn-images.farfetch-contents.com/12/56/25/66/12562566_11923829_1000.jpg')
  bag1.image.attach(io: file, filename: 'gucci.png', content_type: 'image/png')
  bag1.save!


  bag2 = Bag.new(
  name:"MEDIUM LADY DIOR BAG",
  brand: "DIOR",
  price: 4900,
  description: "A timeless and unique work of art, the Lady Dior bag is imbued with the Couture spirit of Dior. Meticulously crafted by hand, this black lambskin bag is enhanced by iconic Dior 'Cannage' stitching. It can be carried by hand or worn on the shoulder for unrivalled elegance.",
  user: user1
  )

  file = URI.open('https://images.unsplash.com/photo-1548036328-c9fa89d128fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80')
  bag2.image.attach(io: file, filename: 'lv.png', content_type: 'image/png')
  bag2.save!


bag3 = Bag.new(
  name:"ONTHEGO GM",
  brand: "LOUIS VUITTON",
  price: 2690,
  description: "Fashioned from Monogram Giant canvas, the Onthego tote bag is as striking as it is practical. A Monogram Reverse pattern on the sides and handles creates a stylish contrast in color and scale. With its generous capacity, shoulder straps and iconic Toron top handles, this versatile GM model is an ideal bag for everyday wear.",
  user: user2
  )

  file = URI.open('https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80')
  bag3.image.attach(io: file, filename: 'dior.png', content_type: 'image/png')
  bag3.save!

bag4 = Bag.new(
  name:"Bolide 31 bag",
  brand: "HERMES",
  price: 8300,
  description: "Designed in 1923 for top drivers and long-distance travelers, this globe-trotting bag slips easily into any trunk. The zip fastener, brought back from America by Émile Hermès at the end of the 1910s, give it its legendary round-angled shape, and allow for quick access to the content. The Bolide bag comes in a travel bag and many-sized handbags. ",
  user: user2
  )

  file = URI.open('https://images.unsplash.com/photo-1575032617751-6ddec2089882?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80')
  bag4.image.attach(io: file, filename: 'hermes.png', content_type: 'image/png')
  bag4.save!

bag5 = Bag.new(
  name:"Evelyne III 29 bag",
  brand: "Ferragamo",
  price: 3300,
  description: "Designed in 1923 for top drivers and long-distance travelers, this globe-trotting bag slips easily into any trunk. The zip fastener, brought back from America by Émile Hermès at the end of the 1910s, give it its legendary round-angled shape, and allow for quick access to the content. The Bolide bag comes in a travel bag and many-sized handbags. ",
  user: user1
  )

  file = URI.open('https://images.unsplash.com/photo-1590874103328-eac38a683ce7?ixlib=rb-1.2.1&auto=format&fit=crop&w=977&q=80')
  bag5.image.attach(io: file, filename: 'Ferragamo.png', content_type: 'image/png')
  bag5.save!

bag6 = Bag.new(
  name:"Bolide 31 bag",
  brand: "PRADA",
  price: 4900,
  description: "Designed in 1923 for top drivers and long-distance travelers, this globe-trotting bag slips easily into any trunk. The zip fastener, brought back from America by Émile Hermès at the end of the 1910s, give it its legendary round-angled shape, and allow for quick access to the content. The Bolide bag comes in a travel bag and many-sized handbags.",
  user: user2
  )

  file = URI.open('https://images.unsplash.com/photo-1601924921557-45e6dea0a157?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
  bag6.image.attach(io: file, filename: 'prada.png', content_type: 'image/png')
  bag6.save!

booking1 = Booking.create(
  start_date: Date.today()-5,
  end_date: Date.today(),
  bag: bag1,
  user: user2,
  approved: true
)

booking2 = Booking.create(
  start_date: Date.today()-2,
  end_date: Date.today(),
  bag: bag2,
  user: user2,
  approved: false
)

booking3 = Booking.create(
  start_date: Date.today()-3,
  end_date: Date.today(),
  bag: bag3,
  user: user1,
  approved: true
)
