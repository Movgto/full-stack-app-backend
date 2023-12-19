# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

user1 = User.create(username: 'user1')

item1 = Item.create(
  name: 'SuperSport 950',
  image: 'https://images.ctfassets.net/x7j9qwvpvr5s/20GjWos8lkeYyKeLlUIkCl/e498d0e4568c1ccd95ace8cb918d1679/SS-950-MY22-Model-Preview-1050x650-v06.png',
  description: 'The SuperSport 950, with its dynamic style and compact dimensions, embodies the elegance of its design and the typical proportions of Ducatis Panigale sports motorcycles. In its new Stripe Livery color scheme, the SuperSport 950 showcases its most sophisticated essence and boldest character, representing Ducatis take on a sports motorcycle designed for the road.',
  deposit: 3000,
  finance_fee: 150,
  option_to_purchase_fee: 100,
  total_amount_payable: 17500,
  duration: 36,
  removed: false
)
