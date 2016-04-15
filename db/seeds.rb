# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[{name: 'Entrepreneur', cost: 0}, {name: 'Corporate', cost: 10000}, {name: 'Expert', cost: 0}].each do |memb|
  Plan.create!(name: memb[:name], price: memb[:cost])
end
