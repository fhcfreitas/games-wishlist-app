# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Game.create!([
  { name: "The Legend of Zelda: Ocarina of Time", publisher: "Nintendo", price: 59.99, release_year: 1998 },
  { name: "The Legend of Zelda: Breath of the Wild", publisher: "Nintendo", price: 69.99, release_year: 2017 },
  { name: "The Legend of Zelda: Majora's Mask", publisher: "Nintendo", price: 49.99, release_year: 2000 },
  { name: "The Legend of Zelda: Twilight Princess", publisher: "Nintendo", price: 59.99, release_year: 2006 },
  { name: "The Legend of Zelda: Wind Waker", publisher: "Nintendo", price: 59.99, release_year: 2002 },

  { name: "Super Mario 64", publisher: "Nintendo", price: 49.99, release_year: 1996 },
  { name: "Super Mario Galaxy", publisher: "Nintendo", price: 59.99, release_year: 2007 },
  { name: "Super Mario Odyssey", publisher: "Nintendo", price: 59.99, release_year: 2017 },
  { name: "Super Mario World", publisher: "Nintendo", price: 39.99, release_year: 1990 },
  { name: "Super Mario Bros. 3", publisher: "Nintendo", price: 29.99, release_year: 1988 },

  { name: "Pokémon Red", publisher: "Nintendo", price: 39.99, release_year: 1996 },
  { name: "Pokémon Blue", publisher: "Nintendo", price: 39.99, release_year: 1996 },
  { name: "Pokémon Gold", publisher: "Nintendo", price: 39.99, release_year: 1999 },
  { name: "Pokémon Ruby", publisher: "Nintendo", price: 39.99, release_year: 2002 },
  { name: "Pokémon Sword", publisher: "Nintendo", price: 59.99, release_year: 2019 },

  { name: "Metroid", publisher: "Nintendo", price: 29.99, release_year: 1986 },
  { name: "Super Metroid", publisher: "Nintendo", price: 39.99, release_year: 1994 },
  { name: "Metroid Prime", publisher: "Nintendo", price: 49.99, release_year: 2002 },
  { name: "Metroid Prime 3: Corruption", publisher: "Nintendo", price: 49.99, release_year: 2007 },
  { name: "Metroid Dread", publisher: "Nintendo", price: 59.99, release_year: 2021 }
])
