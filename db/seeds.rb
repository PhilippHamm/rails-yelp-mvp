# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Rice in',
    address:      'Grünberger Straße 88, 10245 Berlin',
    category:     'japanese',
    phone_number: '0124 0255344'
  },

  {
    name:         'Kreuzburger',
    address:      'Skalitzer Straße 88, 10356 Berlin',
    category:     'belgian',
    phone_number: '02354 37287534'
  },

  {
    name:         'Currywurst',
    address:      'Wiener Straße 88, 13523 Berlin',
    category:     'chinese',
    phone_number: '020 23957343'
  },

  {
    name:         'Cantera',
    address:      'Brandenburger Straße 27, 10000 Berlin',
    category:     'french',
    phone_number: '030 4383753'
  },

  {
    name:         'Dishoom',
    address:      'Liebernetzer Straße 93, 12144 Berlin',
    category:     'italian',
    phone_number: '01234 12746343'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
