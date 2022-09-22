# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting DB..."
Astronaut.destroy_all
Planet.destroy_all
Mission.destroy_all

puts "Creating Astronauts..."
a1 = Astronaut.create!(name: "Obi Juan", position: "Jedi")
a2 = Astronaut.create!(name: "Phil Roth", position: "Captain")

puts "Creating Planets..."
p1 = Planet.create!(name: "Cygnus-2", solar_system: "Alpha Centauri")
p2 = Planet.create!(name: "Omega-Parci-I-8", solar_system: "Omega Quadrant")

puts "Creating Missions..."
Mission.create!(astronaut: a1, planet: p1, priority: rand(0..10), title: "Initial launch")
Mission.create!(astronaut: a1, planet: p1, priority: rand(0..10), title: "second launch")
Mission.create!(astronaut: a1, planet: p2, priority: rand(0..10), title: "bad launch")
Mission.create!(astronaut: a2, planet: p1, priority: rand(0..10), title: "launch")

puts "DONE!"