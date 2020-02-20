# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
  jewelry = Department.create(name: 'Jewelry', category:'Jewelry and Perfume', floor: "First Floor - Central")
  5.times do
    jewelry.items.create(name: Faker::Commerce.product_name, 
                        quantity: rand(5...75), 
                        description: Faker::Quote.famous_last_words)
  end 
  perfume = Department.create(name: 'Perfume', category:'Jewelry and Perfume', floor: "First Floor - Central")
  5.times do
    perfume.items.create(name: Faker::Commerce.product_name, 
                         quantity: rand(5...75), 
                        description: Faker::Quote.famous_last_words)
  end 
  mens_clothing = Department.create(name: 'Mens Clothing', category:'Clothing', floor: "Second Floor - NW corner")
  5.times do
    mens_clothing.items.create(name: Faker::Commerce.product_name, 
                        quantity: rand(5...75), 
                        description: Faker::Quote.famous_last_words)
  end 
  womens_clothing = Department.create(name: 'Womens Clothing', category:'Clothing', floor: "Second Floor - SW corner")
  5.times do
    womens_clothing.items.create(name: Faker::Commerce.product_name, 
                        quantity: rand(5...75), 
                        description: Faker::Quote.famous_last_words)
  end 
  appliances = Department.create(name: 'Appliances', category:'Home Goods', floor: "Third Floor - Central")
  5.times do
    appliances.items.create(name: Faker::Commerce.product_name, 
                        quantity: rand(5...75), 
                        description: Faker::Quote.famous_last_words)
  end 
  shoes = Department.create(name: 'Shoes', category:'Shoes, Socks and Underwear', floor: "First Floor - SW corner")
  5.times do
    shoes.items.create(name: Faker::Commerce.product_name, 
                        quantity: rand(5...75), 
                        description: Faker::Quote.famous_last_words)
  end 
  underwear = Department.create(name: 'Underwear', category:'Shoes, Socks and Underwear', floor: "First Floor - NE corner")
  5.times do
    underwear.items.create(name: Faker::Commerce.product_name, 
                        quantity: rand(5...75), 
                        description: Faker::Quote.famous_last_words)
  end 
