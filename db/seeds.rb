# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data (be careful with this in production!)
puts "Cleaning database..."
Product.destroy_all

puts "Creating products..."

products = [
  {
    name: "Catan",
    description: "Trade, build, and settle the island of Catan in this modern classic. Collect resources, expand your settlements, and be the first to reach 10 victory points.",
    price: 44.99,
    sku: "CATAN-BASE",
    stock_quantity: 15,
    min_players: 3,
    max_players: 4,
    min_play_time: 60,
    max_play_time: 120,
    min_age: 10,
    complexity: 2.3,
    publisher: "Catan Studio",
    designer: "Klaus Teuber",
    year_published: 1995
  },
  {
    name: "Ticket to Ride",
    description: "Build train routes across North America in this family-friendly game. Collect cards, claim routes, and connect cities to score points.",
    price: 49.99,
    sku: "TTR-USA",
    stock_quantity: 12,
    min_players: 2,
    max_players: 5,
    min_play_time: 30,
    max_play_time: 60,
    min_age: 8,
    complexity: 1.9,
    publisher: "Days of Wonder",
    designer: "Alan R. Moon",
    year_published: 2004
  },
  {
    name: "Wingspan",
    description: "Attract birds to your wildlife preserve in this engine-building game. Beautiful artwork and engaging gameplay make this a modern favorite.",
    price: 64.99,
    sku: "WINGSPAN-001",
    stock_quantity: 8,
    min_players: 1,
    max_players: 5,
    min_play_time: 40,
    max_play_time: 70,
    min_age: 10,
    complexity: 2.4,
    publisher: "Stonemaier Games",
    designer: "Elizabeth Hargrave",
    year_published: 2019
  },
  {
    name: "Azul",
    description: "Draft colorful tiles and arrange them on your board to score points. Simple rules with deep strategic gameplay.",
    price: 39.99,
    sku: "AZUL-BASE",
    stock_quantity: 20,
    min_players: 2,
    max_players: 4,
    min_play_time: 30,
    max_play_time: 45,
    min_age: 8,
    complexity: 1.8,
    publisher: "Plan B Games",
    designer: "Michael Kiesling",
    year_published: 2017
  },
  {
    name: "Pandemic",
    description: "Work together to save humanity from four deadly diseases. Cooperative gameplay where players must use their unique abilities to find cures.",
    price: 42.99,
    sku: "PANDEMIC-BASE",
    stock_quantity: 10,
    min_players: 2,
    max_players: 4,
    min_play_time: 45,
    max_play_time: 60,
    min_age: 8,
    complexity: 2.4,
    publisher: "Z-Man Games",
    designer: "Matt Leacock",
    year_published: 2008
  },
  {
    name: "Codenames",
    description: "Party game where two teams compete to identify their agents using one-word clues. Simple to learn, endlessly replayable.",
    price: 19.99,
    sku: "CODENAMES-001",
    stock_quantity: 25,
    min_players: 2,
    max_players: 8,
    min_play_time: 15,
    max_play_time: 30,
    min_age: 14,
    complexity: 1.3,
    publisher: "Czech Games Edition",
    designer: "Vlaada Chvátil",
    year_published: 2015
  },
  {
    name: "7 Wonders",
    description: "Build your civilization through three ages. Draft cards to develop your city and compete with your neighbors.",
    price: 49.99,
    sku: "7WONDERS-BASE",
    stock_quantity: 7,
    min_players: 2,
    max_players: 7,
    min_play_time: 30,
    max_play_time: 30,
    min_age: 10,
    complexity: 2.3,
    publisher: "Repos Production",
    designer: "Antoine Bauza",
    year_published: 2010
  },
  {
    name: "Splendor",
    description: "Collect gems and develop your trading routes to become the most prestigious jewel merchant.",
    price: 39.99,
    sku: "SPLENDOR-001",
    stock_quantity: 0,
    min_players: 2,
    max_players: 4,
    min_play_time: 30,
    max_play_time: 30,
    min_age: 10,
    complexity: 1.8,
    publisher: "Space Cowboys",
    designer: "Marc André",
    year_published: 2014
  }
]

products.each do |product_attrs|
  product = Product.create!(product_attrs)
  puts "Created: #{product.name}"
end

puts "Seeding complete! Created #{Product.count} products."
