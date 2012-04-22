# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "admin", email:"webmaster@adrianmejia.com", password:"1234567890", admin: true)
User.create!(name: "Adrian Mejia", email:"adriansky@gmail.com", password:"1234")
User.create!(name: "Test", email:"me@gmail.com", password:"1234")


e = Exercise.create!(no: 1, 
      short_description: "Add pairs that sum 10", 
      long_description: "Add the following numbers from top down by grouping pairs of numbers that sum 10.")
o = Operation.create!(numbers:"7,6,4,5,1,9", operator: "+", align:"vertical")
e.operations << o
o = Operation.create!(numbers:"8,9,1,2,3,7", operator: "+", align:"vertical")
e.operations << o
o = Operation.create!(numbers:"5,2,8,4,1,9", operator: "+", align:"vertical")
e.operations << o

e = Exercise.create!(no: 2, 
      short_description: "Mental Addition add 11", 
      long_description: "Add 11 to each of the numbers.\nFirst add the tens of one number to the whole other and then the units. \nFor example:\n34+11 say 34,44,45")
o = Operation.create!(numbers:"1", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"57", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"13", operator: "+11", align:"horizontal")
e.operations << o

e = Exercise.create!(no: 3, 
      short_description: "Vertical Test", 
      long_description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
o = Operation.create!(numbers:"1,2,3,4,5,6", operator: "*", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"45,78,98,32,73,45", operator: "+", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"800,123,235,356", operator: "-", align:"horizontal")
e.operations << o

# 
# u.exercises << e
# u.scores.last.attempts = 1
# u.scores.last.time = 236