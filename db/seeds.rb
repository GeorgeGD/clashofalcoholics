# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
building_names = ['Tower','House','Barracks','Archery','Wall']
building_names.each do |name|
	building = Building.create(name: name)
	10.times do |i|
		BuildingLevel.create(building_id: building.id, level: i+1, beer: Random.rand(500), vodka: Random.rand(500), food: Random.rand(500), stone: Random.rand(500))
	end
end