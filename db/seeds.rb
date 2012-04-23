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

e = Exercise.create!(no: 0, 
      short_description: "test", 
      long_description: "test")
      o = Operation.create!(numbers: "2,2", operator: "+", align:"vertical")
      e.operations << o
      o = Operation.create!(numbers: "2,3", operator: "+", align:"vertical")
      e.operations << o
      o = Operation.create!(numbers: "5,3", operator: "+", align:"vertical")
      e.operations << o
      o = Operation.create!(numbers: "1,3", operator: "+", align:"vertical")
      e.operations << o
      o = Operation.create!(numbers: "7,8", operator: "+", align:"vertical")
      e.operations << o

e = Exercise.create!(no: 1, 
      short_description: "Add pairs that sum 10", 
      long_description: "Add the following numbers from top down by grouping pairs of numbers that sum 10.")
no1 = ["7,6,4,5,1,9", "8,9,1,2,3,7", "4,5,5,5,4,6", "5,2,8,4,1,9", "6,4,6,3,2,8", "5,5,3,6,4,8",
   "5,4,6,6,3,7", "3,2,7,3,1,2", "8,2,9,8,1,9", "6,9,1,5,4,6", "5,5,3,2,4,6", "9,6,4,8,1,7", "3,7,6,2,8,8",
   "1,9,9,1,5,4", "6,4,4,5,4,3", "6,3,7,2,2,5", "1,3,7,9,3,7","7,6,2,8,5,5", "1,9,4,3,9,1", "1,5,5,9,4,6", 
   "6,4,7,6,3,7", "3,4,6,4,6,3","7,5,5,3,6,2", "4,9,1,3,2,8"]
no1.each do |n|
  o = Operation.create!(numbers: n, operator: "+", align:"vertical")
  e.operations << o
end


e = Exercise.create!(no: 2, 
      short_description: "Mental Addition add 11", 
      long_description: "Add 11 to each of the numbers.\nFirst add the tens of one number to the whole other and then the units. \nFor example:\n34+11 say 34,44,45")
o = Operation.create!(numbers:"1", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"57", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"13", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"69", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"25", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"81", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"37", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"93", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"56", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"12", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"68", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"24", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"80", operator: "+11", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"8", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"64", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"20", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"76", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"32", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"88", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"44", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"7", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"63", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"19", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"75", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"31", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"87", operator: "+11", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"15", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"71", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"27", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"83", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"39", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"95", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"51", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"14", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"70", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"26", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"82", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"38", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"94", operator: "+11", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"22", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"78", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"34", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"90", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"46", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"2", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"58", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"21", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"77", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"33", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"89", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"45", operator: "+11", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"29", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"85", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"41", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"97", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"53", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"9", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"65", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"28", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"84", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"40", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"96", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"52", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"36", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"92", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"48", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"4", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"60", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"16", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"72", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"35", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"91", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"47", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"3", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"59", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"36", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"92", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"48", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"4", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"60", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"16", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"72", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"35", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"91", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"47", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"3", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"59", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"43", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"99", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"55", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"11", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"67", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"23", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"79", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"42", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"98", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"54", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"10", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"66", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"50", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"6", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"62", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"18", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"74", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"30", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"86", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"49", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"5", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"61", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"17", operator: "+11", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"73", operator: "+11", align:"horizontal")
e.operations << o

e = Exercise.create!(no: 3, 
      short_description: "Add pairs that sum 10", 
      long_description: "Add pairs of succesive number that sum 10. NOTE: add them from the bottom up.")
no3 = ["7,8,4,6,5,3,5,5,1,8,2,5","6,4,5,2,4,5,4,1,2,8,7,3","5,2,5,4,6,6,7,3,4,8,2,4","9,7,6,4,8,8,9,1,1,7,5,5",
  "6,7,9,1,3,4,6,3,8,5,2,8","3,1,6,4,4,1,8,2,9,6,4,7","4,7,3,8,3,2,2,8,1,9,1,9","8,2,9,1,5,3,8,5,5,2,6,5",
  "4,4,3,2,4,6,1,6,4,9,3,7","6,5,7,3,4,2,8,9,1,3,2,1","9,8,8,2,7,1,9,6,5,5,5,4","3,7,6,6,1,2,7,6,4,5,5,6",
  "7,4,6,3,2,6,4,1,8,3,7,9","3,7,8,2,8,5,5,8,2,7,1,9","9,1,6,3,7,5,4,6,4,3,2,9","1,8,7,5,5,6,7,3,5,4,4,6",
  "3,6,4,2,8,5,1,4,1,9,3,7", "6,9,1,7,7,3,2,1,5,2,9,1"]
def operations(e,list,operator="+",align="vertical")
  list.each do |n|
    o = Operation.create!(numbers: n, operator: operator, align: align)
    e.operations << o    
  end
end

operations(e,no3)

e = Exercise.create!(no: 4, 
      short_description: "Mental Addition add 12", 
      long_description: "Add 12 to each of the numbers.\nFirst add the tens of one number to the whole other and then the units. \nFor example:\n34+12 say 34,44,46")
o = Operation.create!(numbers:"1", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"57", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"13", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"69", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"25", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"81", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"37", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"93", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"56", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"12", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"68", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"24", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"80", operator: "+12", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"8", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"64", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"20", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"76", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"32", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"88", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"44", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"7", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"63", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"19", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"75", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"31", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"87", operator: "+12", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"15", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"71", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"27", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"83", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"39", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"95", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"51", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"14", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"70", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"26", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"82", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"38", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"94", operator: "+12", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"22", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"78", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"34", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"90", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"46", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"2", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"58", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"21", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"77", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"33", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"89", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"45", operator: "+12", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"29", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"85", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"41", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"97", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"53", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"9", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"65", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"28", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"84", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"40", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"96", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"52", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"36", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"92", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"48", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"4", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"60", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"16", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"72", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"35", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"91", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"47", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"3", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"59", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"36", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"92", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"48", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"4", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"60", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"16", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"72", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"35", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"91", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"47", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"3", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"59", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"43", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"99", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"55", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"11", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"67", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"23", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"79", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"42", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"98", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"54", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"10", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"66", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"50", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"6", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"62", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"18", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"74", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"30", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"86", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"49", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"5", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"61", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"17", operator: "+12", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"73", operator: "+12", align:"horizontal")
e.operations << o

e = Exercise.create!(no: 5, 
      short_description: "Mental Addition add 13", 
      long_description: "Add 13 to each of the numbers.\nFirst add the tens of one number to the whole other and then the units. \nFor example:\n34+13 say 34,44,47")
o = Operation.create!(numbers:"1", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"57", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"13", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"69", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"25", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"81", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"37", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"93", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"56", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"12", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"68", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"24", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"80", operator: "+13", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"8", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"64", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"20", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"76", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"32", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"88", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"44", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"7", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"63", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"19", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"75", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"31", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"87", operator: "+13", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"15", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"71", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"27", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"83", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"39", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"95", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"51", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"14", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"70", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"26", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"82", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"38", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"94", operator: "+13", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"22", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"78", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"34", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"90", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"46", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"2", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"58", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"21", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"77", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"33", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"89", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"45", operator: "+13", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"29", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"85", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"41", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"97", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"53", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"9", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"65", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"28", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"84", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"40", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"96", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"52", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"36", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"92", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"48", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"4", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"60", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"16", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"72", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"35", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"91", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"47", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"3", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"59", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"36", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"92", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"48", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"4", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"60", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"16", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"72", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"35", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"91", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"47", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"3", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"59", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"43", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"99", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"55", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"11", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"67", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"23", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"79", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"42", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"98", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"54", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"10", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"66", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"50", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"6", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"62", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"18", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"74", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"30", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"86", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"49", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"5", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"61", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"17", operator: "+13", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"73", operator: "+13", align:"horizontal")
e.operations << o


sum = 14
e = Exercise.create!(no: 6, 
      short_description: "Mental Addition add #{sum}", 
      long_description: "Add #{sum} to each of the numbers.\nFirst add the tens of one number to the whole other and then the units. \nFor example:\n34+#{sum} say 34,#{34+(sum-sum%10)},#{34+sum}")
o = Operation.create!(numbers:"1", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"57", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"13", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"69", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"25", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"81", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"37", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"93", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"56", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"12", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"68", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"24", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"80", operator: "+#{sum}", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"8", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"64", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"20", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"76", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"32", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"88", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"44", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"7", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"63", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"19", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"75", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"31", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"87", operator: "+#{sum}", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"15", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"71", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"27", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"83", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"39", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"95", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"51", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"14", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"70", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"26", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"82", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"38", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"94", operator: "+#{sum}", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"22", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"78", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"34", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"90", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"46", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"2", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"58", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"21", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"77", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"33", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"89", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"45", operator: "+#{sum}", align:"horizontal")
e.operations << o

o = Operation.create!(numbers:"29", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"85", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"41", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"97", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"53", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"9", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"65", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"28", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"84", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"40", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"96", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"52", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"36", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"92", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"48", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"4", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"60", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"16", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"72", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"35", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"91", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"47", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"3", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"59", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"36", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"92", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"48", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"4", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"60", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"16", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"72", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"35", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"91", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"47", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"3", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"59", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"43", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"99", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"55", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"11", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"67", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"23", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"79", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"42", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"98", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"54", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"10", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"66", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"50", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"6", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"62", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"18", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"74", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"30", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"86", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"49", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"5", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"61", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"17", operator: "+#{sum}", align:"horizontal")
e.operations << o
o = Operation.create!(numbers:"73", operator: "+#{sum}", align:"horizontal")
e.operations << o

sum = 15
e = Exercise.create!(no: 7, 
      short_description: "Mental Addition add #{sum}", 
      long_description: "Add #{sum} to each of the numbers.\nFirst add the tens of one number to the whole other and then the units. \nFor example:\n34+#{sum} say 34,#{34+(sum-sum%10)},#{34+sum}")
list = [1,57,13,69,25,81,37,93,56,12,68,24,80,8,64,20,76,32,88,44,7,63,19,75,31,87,15,71,27,83,39,95,51,14,70,26,82,38,94,22,78,34,90,46,2,58,21,77,33,89,45,29,85,41,97,53,9,65,28,84,40,96,52,36,92,48,4,60,15,72,35,91,47,3,59,43,99,55,11,67,23,79,42,98,54,10,66,50,6,62,18,74,30,86,49,5,61,17,73]
list.each do |n|
  o = Operation.create!(numbers: n.to_s, operator: "+#{sum}", align:"horizontal")
  e.operations << o
end
ex = 7


###########################################################
ex+=1
e = Exercise.create!(no: ex, 
      short_description: "Group of numbers adding 10 or less.", 
      long_description: "In this exercise, you do groups of successive numbers that sum 10 or less. For example: 7,17,23,32; the second: 8,18,23,30; third: 9,19,29")
no1.each do |n|
  o = Operation.create!(numbers: n.to_s, operator: "+", align:"vertical")
  e.operations << o
end
###########################################################

###########################################################
# SUM TABLE I
###########################################################
ex+=1
sum +=1
e = Exercise.create!(no: ex, 
      short_description: "Mental Addition add #{sum}", 
      long_description: "Add #{sum} to each of the numbers.\nFirst add the tens of one number to the whole other and then the units. \nFor example:\n34+#{sum} say 34,#{34+(sum-sum%10)},#{34+sum}")
list.each do |n|
  o = Operation.create!(numbers: n.to_s, operator: "+#{sum}", align:"horizontal")
  e.operations << o
end
###########################################################

###########################################################
# SUM TABLE I
###########################################################
def table1(e,sum,ex,list)
  e = Exercise.create!(no: ex, 
        short_description: "Mental Addition add #{sum}", 
        long_description: "Add #{sum} to each of the numbers.\nFirst add the tens of one number to the whole other and then the units. \nFor example:\n34+#{sum} say 34,#{34+(sum-sum%10)},#{34+sum}")
  list.each do |n|
    o = Operation.create!(numbers: n.to_s, operator: "+#{sum}", align:"horizontal")
    e.operations << o
  end
end
ex+=1
sum +=1
table1(e,sum,ex,list)
###########################################################


###########################################################
ex+=1
e = Exercise.create!(no: ex, 
      short_description: "Group of numbers adding 10 or less.", 
      long_description: "In this exercise, you do groups of successive numbers that sum 10 or less. For example: 7,17,23,32; the second: 8,18,23,30; third: 9,19,29")
operations(e,no3)
###########################################################

#12
ex+=1
sum +=1
table1(e,sum,ex,list)
# 

###########################################################
ex+=1
e = Exercise.create!(no: ex, 
      short_description: "Adding single columns by pairs.", 
      long_description: "Add from the top down: add 2 successive number by single columns. For example: 5,14,25, write 5 and carry 2; then in the 2nd column: 2,12,27,36; thus, the answer is 365.")
no13 = ["43,62,78,81,14,87","29,75,36,69,43,16","58,33,65,98,72,45","87,62,94,27,89,74","16,91,33,56,29,32",
  "16,99,36,71,61,41","48,21,68,29,18,25","77,29,49,11,51,53","36,49,94,59,22,27","63,78,96,44,41,88",
  "33,39,43,51,55,36","21,79,74,85,63,82","34,43,27,53,17,57","24,14,11,15,75,78","16,44,49,54,49,99",
  "31,35,67,44,84,42","28,53,21,34,52,56","63,35,12,31,81,15","32,65,16,67,73,55","63,28,76,45,69,62",
  "85,56,75,37,73,24","54,42,68,13,99,84","14,27,54,85,59,69","68,42,28,34,83,16","69,28,45,37,71,91"]
operations(e,no13)
###########################################################

# 14
ex+=1
sum +=1
table1(e,sum,ex,list)
#

# TODO ex. no. 15



