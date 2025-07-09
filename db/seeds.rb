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
  # Nintendo
  { name: "The Legend of Zelda: Ocarina of Time", publisher: "Nintendo", price: 59.99, release_year: 1998, platform: "Nintendo 64", active: true },
  { name: "The Legend of Zelda: Breath of the Wild", publisher: "Nintendo", price: 69.99, release_year: 2017, platform: "Nintendo Switch", active: true },
  { name: "The Legend of Zelda: Majora's Mask", publisher: "Nintendo", price: 49.99, release_year: 2000, platform: "Nintendo 64", active: true },
  { name: "The Legend of Zelda: Twilight Princess", publisher: "Nintendo", price: 59.99, release_year: 2006, platform: "GameCube", active: true },
  { name: "The Legend of Zelda: Wind Waker", publisher: "Nintendo", price: 59.99, release_year: 2002, platform: "GameCube", active: true },

  { name: "Super Mario 64", publisher: "Nintendo", price: 49.99, release_year: 1996, platform: "Nintendo 64", active: true },
  { name: "Super Mario Galaxy", publisher: "Nintendo", price: 59.99, release_year: 2007, platform: "Wii", active: true },
  { name: "Super Mario Odyssey", publisher: "Nintendo", price: 59.99, release_year: 2017, platform: "Nintendo Switch", active: true },
  { name: "Super Mario World", publisher: "Nintendo", price: 39.99, release_year: 1990, platform: "SNES", active: true },
  { name: "Super Mario Bros. 3", publisher: "Nintendo", price: 29.99, release_year: 1988, platform: "NES", active: true },

  { name: "Pokémon Red", publisher: "Nintendo", price: 39.99, release_year: 1996, platform: "Game Boy", active: true },
  { name: "Pokémon Blue", publisher: "Nintendo", price: 39.99, release_year: 1996, platform: "Game Boy", active: true },
  { name: "Pokémon Gold", publisher: "Nintendo", price: 39.99, release_year: 1999, platform: "Game Boy Color", active: true },
  { name: "Pokémon Ruby", publisher: "Nintendo", price: 39.99, release_year: 2002, platform: "Game Boy Advance", active: true },
  { name: "Pokémon Sword", publisher: "Nintendo", price: 59.99, release_year: 2019, platform: "Nintendo Switch", active: true },

  { name: "Metroid", publisher: "Nintendo", price: 29.99, release_year: 1986, platform: "NES", active: true },
  { name: "Super Metroid", publisher: "Nintendo", price: 39.99, release_year: 1994, platform: "SNES", active: true },
  { name: "Metroid Prime", publisher: "Nintendo", price: 49.99, release_year: 2002, platform: "GameCube", active: true },
  { name: "Metroid Prime 3: Corruption", publisher: "Nintendo", price: 49.99, release_year: 2007, platform: "Wii", active: true },
  { name: "Metroid Dread", publisher: "Nintendo", price: 59.99, release_year: 2021, platform: "Nintendo Switch", active: true },

  { name: "God of War", publisher: "Sony", price: 59.99, release_year: 2018, platform: "PlayStation 4", active: true },
  { name: "The Last of Us", publisher: "Sony", price: 39.99, release_year: 2013, platform: "PlayStation 3", active: true },
  { name: "Uncharted 4: A Thief's End", publisher: "Sony", price: 49.99, release_year: 2016, platform: "PlayStation 4", active: true },
  { name: "Horizon Zero Dawn", publisher: "Sony", price: 49.99, release_year: 2017, platform: "PlayStation 4", active: true },
  { name: "Spider-Man", publisher: "Sony", price: 59.99, release_year: 2018, platform: "PlayStation 4", active: true },

  { name: "Halo: Combat Evolved", publisher: "Microsoft", price: 39.99, release_year: 2001, platform: "Xbox", active: true },
  { name: "Halo 3", publisher: "Microsoft", price: 49.99, release_year: 2007, platform: "Xbox 360", active: true },
  { name: "Gears of War", publisher: "Microsoft", price: 49.99, release_year: 2006, platform: "Xbox 360", active: true },
  { name: "Forza Horizon 4", publisher: "Microsoft", price: 59.99, release_year: 2018, platform: "Xbox One", active: true },
  { name: "Fable II", publisher: "Microsoft", price: 39.99, release_year: 2008, platform: "Xbox 360", active: true }
])
