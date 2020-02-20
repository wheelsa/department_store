# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Department.create(name: 'Jewelry', category:'Jewelry and Perfume', floor: "First Floor - Central")
  Department.create(name: 'Perfume', category:'Jewelry and Perfume', floor: "First Floor - Central")
  Department.create(name: 'Mens Clothing', category:'Clothing', floor: "Second Floor - NW corner")
  Department.create(name: 'Womens Clothing', category:'Clothing', floor: "Second Floor - SW corner")
  Department.create(name: 'Appliances', category:'Home Goods', floor: "Third Floor - Central")
  Department.create(name: 'Shoes', category:'Shoes, Socks and Underwear', floor: "First Floor - SW corner")
  Department.create(name: 'Underwear', category:'Shoes, Socks and Underwear', floor: "First Floor - NE corner")
