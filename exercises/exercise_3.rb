require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store1 = Stores.find_by(id: 1)
@store2 = Stores.find_by(id: 2)
@store3 = Stores.find_by(id: 3)
@store3.destroy

puts Stores.count
