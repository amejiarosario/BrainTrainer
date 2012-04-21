# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(name: "Adrian Mejia", email:"adriansky@gmail.com", password:"1234")

e = Exercise.create(no: 1, short_description: "short_description", long_description: "long_description")
o = Operation.create(numbers:"12,26,82,29", operator: "+", align:"vertial")
e.operations << o
o = Operation.create(numbers:"78,18,29,18", operator: "+", align:"vertial")
e.operations << o

u.exercises << e
u.scores.last.attempts = 1
u.scores.last.time = 236