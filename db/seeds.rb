include Type, Status, ExperienceFunction

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Move.create([
  { name: 'Water gun', attack: 40, move_types: [Type::WATER] },
  { name: 'Firespit', attack: 60, move_types: [Type::FIRE], status: Status::BURN, status_probability: 10 }
])

