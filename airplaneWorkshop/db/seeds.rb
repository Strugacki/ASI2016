# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'faker'

100.times do |num|
    
    plane = Plane.new
    
    plane.brand = Faker::App.name
    
    plane.model = Faker::Number.between(from = 1, to = 200)
    
    plane.fault = Faker::Lorem.paragraphs.join("<br>")

    plane.save

end