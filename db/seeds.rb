# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create pools
p = []
p[0] = Pool.create(name: "Rebecca Adlington Swimming Centre", location: "Mansfield", length: "25")
p[1] = Pool.create(name: "Water Meadows", location: "Mansfield", length: "25")
p[2] = Pool.create(name: "Lammas Leisure Centre", location: "Sutton in Ashfield", length: "25")
p[3] = Pool.create(name: "Harvey Hadden Sports Village", location: "Bilborough, Nottingham", length: "50")

# create swims
Swim.create(when: DateTime.parse("2016-11-01 21:00"), duration: "2600", distance: "1000", pool_id: p[0].id)
Swim.create(when: DateTime.parse("2016-11-03 21:00"), duration: "2500", distance: "1000", pool_id: p[1].id)
Swim.create(when: DateTime.parse("2016-11-05 21:00"), duration: "2400", distance: "1000", pool_id: p[2].id)
Swim.create(when: DateTime.parse("2016-11-06 21:00"), duration: "2500", distance: "1000", pool_id: p[3].id)
Swim.create(when: DateTime.parse("2016-11-07 21:00"), duration: "2250", distance: "1000", pool_id: p[0].id)
Swim.create(when: DateTime.parse("2016-11-09 21:00"), duration: "2100", distance: "1000", pool_id: p[1].id)
Swim.create(when: DateTime.parse("2016-11-11 21:00"), duration: "1900", distance: "1000", pool_id: p[2].id)
Swim.create(when: DateTime.parse("2016-11-12 21:00"), duration: "2000", distance: "1000", pool_id: p[3].id)
Swim.create(when: DateTime.parse("2016-11-13 21:00"), duration: "1850", distance: "1000", pool_id: p[0].id)
Swim.create(when: DateTime.parse("2016-11-15 21:00"), duration: "1825", distance: "1000", pool_id: p[1].id)
Swim.create(when: DateTime.parse("2016-11-17 21:00"), duration: "1800", distance: "1000", pool_id: p[2].id)
Swim.create(when: DateTime.parse("2016-11-18 21:00"), duration: "1900", distance: "1000", pool_id: p[3].id)
