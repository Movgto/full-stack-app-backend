require 'open-uri'

user1 = User.create!(username: 'user1')

item1 = Item.new(
  name: 'SuperSport 950',
  description: 'The SuperSport 950, with its dynamic style and compact dimensions, embodies the elegance of its design and the typical proportions of Ducatis Panigale sports motorcycles. In its new Stripe Livery color scheme, the SuperSport 950 showcases its most sophisticated essence and boldest character, representing Ducatis take on a sports motorcycle designed for the road.',
  deposit: 3000,
  finance_fee: 150,
  option_to_purchase_fee: 100,
  total_amount_payable: 17500,
  duration: 36,
  removed: false
)

# Download the image and attach it to the item
image = URI.open('https://images.ctfassets.net/x7j9qwvpvr5s/20GjWos8lkeYyKeLlUIkCl/e498d0e4568c1ccd95ace8cb918d1679/SS-950-MY22-Model-Preview-1050x650-v06.png')
item1.image.attach(io: image, filename: 'SS-950-MY22-Model-Preview-1050x650-v06.png')

item1.save!
