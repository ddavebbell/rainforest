# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: 'Bits', description: 'Bits without Bobs', price: 5 , pic_url: 'https://media.wihatools.com/media/catalog/product/cache/1/image/1200x1000/9df78eab33525d08d6e5fb8d27136e95/7/3/73941.jpg' )
Product.create(name: 'Bobs', description: 'Bobs without Bits', price: 3, pic_url: 'https://knifeedgebit.com/wp-content/uploads/2016/11/KEBP123.png')
Product.create(name: 'Paper Towel', description: '10 ply', price: 8, pic_url: 'https://images-na.ssl-images-amazon.com/images/I/71tmlOV5mWL._SX425_.jpg' )
Product.create(name: 'Liter Container', description: '1L wholesale style', price: 1, pic_url: 'https://cdnimg.webstaurantstore.com/images/products/large/230282/1131570.jpg' )
Product.create(name: 'Lids', description: 'Lids for deli containers', price: 1, pic_url: 'https://compostables.org/wp-content/uploads/2016/12/58630bba30961-0.jpg' )
Product.create(name: 'Lucky Cat', description: 'lucky charm, meow!', price: 25, pic_url: 'https://images-na.ssl-images-amazon.com/images/I/61LCcjXdn%2BL._SY355_.jpg' )
