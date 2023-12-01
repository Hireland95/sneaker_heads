# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Trainer.destroy_all

high_top = Category.create!(name: 'high-top')
low_top = Category.create!(name: 'low-top')

description_1 = "Fantastic pair of trainers. Wonderful to run around in on a sunny afternoon. Comfortable and cool at the same time!"
description_2 = "Lightweight but beaufitul pair of trainers. Great for all occasions but best when trying to impress your mates!"
description_3 = "These wonderful trainers can be worn all year round no matter what the weather. Added bonus that they are great for outdoor sports."

puts 'Creating trainers...'
Trainer.create!(sku: 'Nike - high_top', name: 'Nike Blazers', photo_url: 'Nike - high_top.jpg', category: high_top, price: 120, description: description_1)
Trainer.create!(sku: 'Adidas - low_top', name: 'Adidas Samba', photo_url: 'Adidas - low_top.jpg', category: low_top, price: 80, description: description_2)
Trainer.create!(sku: 'Converse - low_top', name: 'Converse All Stars', photo_url: 'Converse - low_top.jpg', category: low_top, price: 65, description: description_3)
Trainer.create!(sku: 'Nike - low_top', name: 'Nike Air Max', photo_url: 'Nike - low_top.jpg', category: low_top, price: 100, description: description_1)
Trainer.create!(sku: 'Yeezy - low_top', name: 'Yeezy', photo_url: 'Yeezy - low_top.jpg', category: low_top, price: 200, description: description_2)
Trainer.create!(sku: 'Yeezy - low_top_white', name: 'Yeezy (white)', photo_url: 'Yeezy - low_top_white.jpg', category: low_top, price: 250, description: description_3)
Trainer.create!(sku: 'Nike - low_top_gold', name: 'Nike - Runners (Gold)', photo_url: 'Nike - low_top_gold.jpg', category: low_top, price: 89, description: description_1)
Trainer.create!(sku: 'Adidas - low_top_runners', name: 'Adidas - Runners (Gold)', photo_url: 'Adidas - low_top_runners.jpg', category: low_top, price: 120, description: description_2)
Trainer.create!(sku: 'Nike - low_top_runners', name: 'Nike - Runners (White)', photo_url: 'Nike - low_top_runners.jpg', category: low_top, price: 65, description: description_3 )
Trainer.create!(sku: 'Adidas - low_top_green', name: 'Adidas - Samba (Green)', photo_url: 'Adidas - low_top_green.jpg', category: low_top, price: 60, description: description_1)
Trainer.create!(sku: 'Nike - high_top', name: 'Nike Blazers', photo_url: 'Nike - high_top.jpg', category: high_top, price: 120, description: description_1)
Trainer.create!(sku: 'Adidas - low_top', name: 'Adidas Samba', photo_url: 'Adidas - low_top.jpg', category: low_top, price: 80, description: description_2)
Trainer.create!(sku: 'Converse - low_top', name: 'Converse All Stars', photo_url: 'Converse - low_top.jpg', category: low_top, price: 65, description: description_3)
Trainer.create!(sku: 'Nike - low_top', name: 'Nike Air Max', photo_url: 'Nike - low_top.jpg', category: low_top, price: 100, description: description_1)
Trainer.create!(sku: 'Yeezy - low_top', name: 'Yeezy', photo_url: 'Yeezy - low_top.jpg', category: low_top, price: 200, description: description_2)
Trainer.create!(sku: 'Yeezy - low_top_white', name: 'Yeezy (white)', photo_url: 'Yeezy - low_top_white.jpg', category: low_top, price: 250, description: description_3)
Trainer.create!(sku: 'Nike - low_top_gold', name: 'Nike - Runners (Gold)', photo_url: 'Nike - low_top_gold.jpg', category: low_top, price: 89, description: description_1)
Trainer.create!(sku: 'Adidas - low_top_runners', name: 'Adidas - Runners (Gold)', photo_url: 'Adidas - low_top_runners.jpg', category: low_top, price: 120, description: description_2)
Trainer.create!(sku: 'Nike - low_top_runners', name: 'Nike - Runners (White)', photo_url: 'Nike - low_top_runners.jpg', category: low_top, price: 65, description: description_3 )
Trainer.create!(sku: 'Adidas - low_top_green', name: 'Adidas - Samba (Green)', photo_url: 'Adidas - low_top_green.jpg', category: low_top, price: 60, description: description_1)

puts 'Finished!'
