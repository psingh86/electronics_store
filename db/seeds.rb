# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"
require 'open-uri'
require 'json'
require 'uri'
require 'net/http'
require 'openssl'
Faker::Name.unique.clear
Faker::UniqueGenerator.clear

# Category.create(name:"TV", description: Faker::Lorem.sentence)
# Category.create(name:"Games", description: Faker::Lorem.sentence)
# Category.create(name:"Computer", description: Faker::Lorem.sentence)

# audio = Category.find_by(name: "Audio")
# tv = Category.find_by(name: "TV")
# games = Category.find_by(name: "Games")
# computer = Category.find_by(name: "Computer")

# filename = Rails.root.join("db/electronics_product.csv")

# csv_data = File.read(filename)

# products = CSV.parse(csv_data, headers: true , encoding: "utf-8")

# for i in 76..101
#     Product.create(name: products[i]["name"],
#                         brand: products[i]["brand"],
#                         manufacturer:products[i]["manufacturer"],
#                         source:products[i]["prices.sourceURLs"],
#                         price:products[i]["price"],
#                         isSale:products[i]["prices.isSale"],
#                         image:products[i]["imageURLs"].split(",")[0],
#                         Category_id:computer.id)
# end

# Province.create(name:"Alberta", GST:0.0, PST:0.05, HST:0.05)
# Province.create(name:"British Columbia",GST:0.07,PST:0.05,HST:0.0)
# Province.create(name:"Manitoba",GST:0.07,PST:0.05,HST:0.0)
# Province.create(name:"New Brunswick",GST:0.0,PST:0.0,HST:0.15)
# Province.create(name:"Newfoundland and Labrador",GST:0.0,PST:0.0,HST:0.15)
# Province.create(name:"Northwest Territories",GST:0.0,PST:0.05,HST:0.0)
# Province.create(name:"Nova Scotia",GST:0.0,PST:0.0,HST:0.15)
# Province.create(name:"Ontario",GST:0.0,PST:0.0,HST:0.13)
# Province.create(name:"Prince Edward Island",GST:0.0,PST:0.0,HST:0.15)
# Province.create(name:"Quebec",GST:0.0975,PST:0.05,HST:0.0)
# Province.create(name:"Saskatchewan",GST:0.06,PST:0.05,HST:0.0)
# Province.create(name:"Yukon",GST:0.0,PST:0.05,HST:0.0)
# Province.create(name:"Nunavut",GST:0.0,PST:0.05,HST:0.0)


# BC = Province.find_by(name: "British Columbia")



# def swapi_fetch(url)
#     JSON.parse(URI.open(url).read)
#   end

# def person_url()
#     "https://randomuser.me/api/"
# end
    
# nums = 0..3
# nums.each do |num|
#     person = swapi_fetch(person_url())
#      User.create(first_name: person['results'][0]['name']['first'],
#                     last_name: person['results'][0]['name']['last'],
#                     password: "pass",
#                     address: person['results'][0]['location']['street']['name'],
#                     Province_id: BC.id)
   
# end

  computer = Category.find_by(name: "Computer")

query = URI.encode_www_form_component(computer.name)

downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")

computer.image.attach(io: downloaded_image, filename: "m-#{computer.name}.jpg")

