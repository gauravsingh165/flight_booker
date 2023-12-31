# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create airports
# Airport.create(code: 'SFO')
# Airport.create(code: 'NYC')
# # Add more airports as needed

# # Create flights
# Flight.create(departure_airport: Airport.first, arrival_airport: Airport.last, start_datetime: Time.now, duration: 180)
# Add more flights as needed
# Create airports
sfo = Airport.create(code: 'mumbai')
nyc = Airport.create(code: 'delhi')
# Add more airports as needed

# Create flights
Flight.create(
  departure_airport: sfo,
  arrival_airport: nyc,
  start_datetime: DateTime.new(2025, 8, 15, 10, 0),
  duration: 36,
#   passenger_count: 150
)
Flight.create(
  departure_airport: nyc,
  arrival_airport: sfo,
  start_datetime: DateTime.new(2026, 8, 20, 14, 30),
  duration: 36,
#   passenger_count: 180
)
# Add more flights as needed
