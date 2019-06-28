# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: 'Bits', description: 'They go with bobs', price_in_cents: 500, pic_url: 'https://ae01.alicdn.com/kf/HTB1bjz4mznD8KJjSspbq6zbEXXaJ/10-Piece-100mm-Double-Ended-Ph2-Head-Driver-Bit-2-Philips-Screwdriver-Bit-1-4-6.jpg_640x640.jpg')

Product.create(name: 'Bobs', description: 'They go with bits', price_in_cents: 600, pic_url: 'https://da2lh5cs8ikqj.cloudfront.net/cart-products/JWpIHl3g3Wc1iRGL.medium')

Product.create(name: 'Nestea', description: 'The actual champion himself, the duck man', price_in_cents: 1500, pic_url: 'https://bk-ca-prd.s3.amazonaws.com/sites/burgerking.ca/files/Hero-Nestea_0.png')

Product.create(name: 'James', description: 'James-in-a-can', price_in_cents: 1490, pic_url: 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Lim_Jae-Duk_at_LG-IM_Sponsorship_Singing_Ceremory.jpg')
