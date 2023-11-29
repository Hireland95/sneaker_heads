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

puts 'Creating trainers...'
Trainer.create!(sku: 'Nike - high_top', name: 'Nike Blazers', photo_url: 'Nike - high_top.jpg', category: high_top, price: 120)
Trainer.create!(sku: 'Adidas - low_top', name: 'Adidas Samba', photo_url: 'Adidas - low_top.jpg', category: low_top, price: 80)
Trainer.create!(sku: 'Converse - low_top', name: 'Converse All Stars', photo_url: 'Converse - low_top.jpg', category: low_top, price: 65)
Trainer.create!(sku: 'Nike - low_top', name: 'Nike Air Max', photo_url: 'Nike - low_top.jpg', category: low_top, price: 100)
Trainer.create!(sku: 'Yeezy - low_top', name: 'Yeezy', photo_url: 'Yeezy - low_top.jpg', category: low_top, price: 200)

puts 'Finished!'
