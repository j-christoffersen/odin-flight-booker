# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create!(code: 'SFO')
Airport.create!(code: 'LAX')
Airport.create!(code: 'NYC')
Airport.create!(code: 'JFK')

Flight.create!(depart_airport_id: 1, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,23,8), duration: 1*3600)
Flight.create!(depart_airport_id: 1, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,23,12), duration: 1*3600)
Flight.create!(depart_airport_id: 1, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,23,20), duration: 1*3600)
Flight.create!(depart_airport_id: 2, arrive_airport_id: 3, depart_time: DateTime.new(2017,8,23,20), duration: 3*3600)
Flight.create!(depart_airport_id: 1, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,24,2), duration: 1*3600)
Flight.create!(depart_airport_id: 4, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,25,12), duration: 3*3600)
Flight.create!(depart_airport_id: 1, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,25,20), duration: 1*3600)
Flight.create!(depart_airport_id: 2, arrive_airport_id: 3, depart_time: DateTime.new(2017,8,25,14), duration: 2.5*3600)
Flight.create!(depart_airport_id: 2, arrive_airport_id: 3, depart_time: DateTime.new(2017,8,25,17), duration: 2.5*3600)
Flight.create!(depart_airport_id: 2, arrive_airport_id: 3, depart_time: DateTime.new(2017,8,25,20), duration: 2.5*3600)
Flight.create!(depart_airport_id: 1, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,26,2), duration: 1*3600)
Flight.create!(depart_airport_id: 4, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,26,12), duration: 3*3600)
Flight.create!(depart_airport_id: 4, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,26,13), duration: 3*3600)
Flight.create!(depart_airport_id: 4, arrive_airport_id: 2, depart_time: DateTime.new(2017,8,26,14), duration: 3*3600)