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
  address: "Seoul",
)

user2 = User.create(
  email: "sarah@gmail.com",
  password: "lewagon",
  first_name: "Sarah",
  last_name: "Kim",
  address: "Seoul",
)


user3 = User.create(
  email: "harry@gmail.com",
  password: "lewagon",
  first_name: "Harry",
  last_name: "Kim",
  address: "Seoul",
)

bag1 = Bag.new(
  name:"OPIDIA GG SMALL BAG",
  brand: "GUCCI",
  price: 46,
  description: "Gucci pays homage to their rich Italian heritage through iconic elements from the brand’s archives. The creative director explores new, modern paths to achieve this goal. Crafted from GG Supreme canvas, this small Ophidia GG shoulder bag from Gucci features an adjustable shoulder strap, a top zip fastening, a green and red Web, a metal Double G, gold-tone hardware, leather trims, internal slip pockets and Double G charms.",
  user: user1,
  available: false
  )

  file = URI.open('https://cdn-images.farfetch-contents.com/12/56/25/66/12562566_11923829_1000.jpg')
  bag1.images.attach(io: file, filename: 'gucci.png', content_type: 'image/png')
  bag1.save!


bag2 = Bag.new(
  name:"Medium Lady Dior Bag",
  brand: "DIOR",
  price: 58,
  description: "A timeless and unique work of art, the Lady Dior bag is imbued with the Couture spirit of Dior. Meticulously crafted by hand, this black lambskin bag is enhanced by iconic Dior 'Cannage' stitching. It can be carried by hand or worn on the shoulder for unrivalled elegance.",
  user: user1,
  available: true
  )

  file = URI.open('https://images.unsplash.com/photo-1548036328-c9fa89d128fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80')
  bag2.images.attach(io: file, filename: 'lv.png', content_type: 'image/png')
  bag2.save!

bag3 = Bag.new(
  name:"Onthego GM",
  brand: "LOUIS VUITTON",
  price: 90,
  description: "Fashioned from Monogram Giant canvas, the Onthego tote bag is as striking as it is practical. A Monogram Reverse pattern on the sides and handles creates a stylish contrast in color and scale. With its generous capacity, shoulder straps and iconic Toron top handles, this versatile GM model is an ideal bag for everyday wear.",
  user: user2,
  available: true
)

file = URI.open('https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80')
bag3.images.attach(io: file, filename: 'dior.png', content_type: 'image/png')
bag3.save!


bag4 = Bag.new(
name:"Bolide 31 bag",
brand: "HERMES",
price: 83,
description: "Designed in 1923 for top drivers and long-distance travelers, this globe-trotting bag slips easily into any trunk. The zip fastener, brought back from America by Émile Hermès at the end of the 1910s, give it its legendary round-angled shape, and allow for quick access to the content. The Bolide bag comes in a travel bag and many-sized handbags. ",
user: user2,
available: false
)

file = URI.open('https://images.unsplash.com/photo-1575032617751-6ddec2089882?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80')
bag4.images.attach(io: file, filename: 'hermes.png', content_type: 'image/png')
bag4.save!


bag5 = Bag.new(
name:"Evelyne III 29 bag",
brand: "Ferragamo",
price: 67,
description: "Designed in 1923 for top drivers and long-distance travelers, this globe-trotting bag slips easily into any trunk. The zip fastener, brought back from America by Émile Hermès at the end of the 1910s, give it its legendary round-angled shape, and allow for quick access to the content. The Bolide bag comes in a travel bag and many-sized handbags. ",
user: user1,
available: false
)


file = URI.open('https://images.unsplash.com/photo-1590874103328-eac38a683ce7?ixlib=rb-1.2.1&auto=format&fit=crop&w=977&q=80')
bag5.images.attach(io: file, filename: 'Ferragamo.png', content_type: 'image/png')
bag5.save!

bag6 = Bag.new(
name:"Bolide 31 bag",
brand: "PRADA",
price: 76,
description: "Designed in 1923 for top drivers and long-distance travelers, this globe-trotting bag slips easily into any trunk. The zip fastener, brought back from America by Émile Hermès at the end of the 1910s, give it its legendary round-angled shape, and allow for quick access to the content. The Bolide bag comes in a travel bag and many-sized handbags.",
user: user3,
available: true
)

file = URI.open('https://images.unsplash.com/photo-1601924921557-45e6dea0a157?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
bag6.images.attach(io: file, filename: 'prada.png', content_type: 'image/png')
bag6.save!

bag7 = Bag.new(
name:"YSL Clutch",
brand: "Saint Laurent",
price: 50,
description: "Designed in 1923 for top drivers and long-distance travelers, this globe-trotting bag slips easily into any trunk. The zip fastener, brought back from America by Émile Hermès at the end of the 1910s, give it its legendary round-angled shape, and allow for quick access to the content. The Bolide bag comes in a travel bag and many-sized handbags.",
user: user1,
available: true
)

file = URI.open('https://s3.ap-northeast-2.amazonaws.com/productmain/20200821_637335671463253325_21141503_0.jpg')
bag7.images.attach(io: file, filename: 'ysl.png', content_type: 'image/png')
bag7.save!

bag8 = Bag.new(
name:"Balenciaga Twiddy",
brand: "Balenciaga",
price: 35,
description: "Designed in 1923 for top drivers and long-distance travelers, this globe-trotting bag slips easily into any trunk. The zip fastener, brought back from America by Émile Hermès at the end of the 1910s, give it its legendary round-angled shape, and allow for quick access to the content. The Bolide bag comes in a travel bag and many-sized handbags.",
user: user2,
available: true
)

file = URI.open('https://cdn1.savoirflair.com/pictures/w/450/1/95/ffffff/wp-content/uploads/2020/07/NEO-CLASSIC-2.jpg?x88026')
bag8.images.attach(io: file, filename: 'balenciaga.png', content_type: 'image/png')
bag8.save!
    
bag9 = Bag.new(
name:"Classic Flap",
brand: "Chanel",
price: 90,
description: "Inspired by military satchels worn in the 1920s, the Classic Flap Bag features a number of instantly recognizable features such as the unique leather handles wrapped in protective chains and the iconic interlocking “CC” on the clasp",
user: user1,
available: true
)

file = URI.open('https://www.chanel.com/images//t_fashion//q_auto,f_jpg,fl_lossy,dpr_2/w_320/large-classic-handbag-black-grained-calfskin-gold-tone-metal-grained-calfskin-gold-tone-metal-packshot-default-a58600y01864c3906-8812351422494.jpg')
bag9.images.attach(io: file, filename: 'balenciaga.png', content_type: 'image/png')
bag9.save!

bag10 = Bag.new(
name:"Delvaux Precious Leather Tote",
brand: "Delvaux",
price: 50,
description: "Delvaux is the oldest fine leather luxury goods company in the world, founded in 1829 in Brussels, Belgium",
user: user1,
available: true
)

file = URI.open('https://www.thenationalnews.com/image/policy:1.862480:1558419579/wk-delvaux.jpg?f=16x9&w=1200&$p$f$w=fb0f2f5')
bag10.images.attach(io: file, filename: 'balenciaga.png', content_type: 'image/png')
bag10.save!

bag11 = Bag.new(
name:"Mini Flap Bag",
brand: "Chanel",
price: 75,
description: "Lambskin & Gold-Tone Metal Yellow",
user: user2,
available: true
)

file = URI.open('https://media-cdn.yoogiscloset.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/6/261605_01.jpg')
bag11.images.attach(io: file, filename: 'balenciaga.png', content_type: 'image/png')
bag11.save!

bag12 = Bag.new(
name:"Mini Tweed Bag",
brand: "Chanel",
price: 80,
description: "Timeless Tweed Neon Multicolor Double Flap",
user: user2,
available: true
)

file = URI.open('https://www.cblbags.com/wp-content/uploads/2016/12/bolso-chanel-timeless-double-flap-tweed-rosa-multicolor-fluor-general-1.jpg')
bag12.images.attach(io: file, filename: 'balenciaga.png', content_type: 'image/png')
bag12.save!

bag13 = Bag.new(
name:"Dior Lady D-light Bag",
brand: "Dior",
price: 65,
description: "Medium bag blue denim",
user: user2,
available: true
)

file = URI.open('https://wwws.dior.com/couture/ecommerce/media/catalog/product/cache/1/zoom_image_1/3000x2000/17f82f742ffe127f42dca9de82fb58b1/P/x/1604954713_M0565OREY_M49E_E01_ZH.jpg')
bag13.images.attach(io: file, filename: 'balenciaga.png', content_type: 'image/png')
bag13.save!

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

booking4 = Booking.create(
  start_date: Date.today()-5,
  end_date: Date.today()-3,
  bag: bag4,
  user: user1,
  approved: true
)

booking5 = Booking.create(
  start_date: Date.today()-5,
  end_date: Date.today()-3,
  bag: bag5,
  user: user2,
  approved: true
)
