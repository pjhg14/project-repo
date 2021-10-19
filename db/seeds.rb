#   This file should contain all the record creation needed to seed the database with its default values.
#   The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
#   Examples:
#
#       movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#       Character.create(name: 'Luke', movie: movies.first)

# Destroy All
Technology.destroy_all

# Create list of technologies I feel I am proficient with at the time of writing this
Technology.create(name: "Java")
Technology.create(name: "JavaScript")
Technology.create(name: "Ruby")
Technology.create(name: "React")
Technology.create(name: "Rails")

# Rest of the stuff will be added later :P