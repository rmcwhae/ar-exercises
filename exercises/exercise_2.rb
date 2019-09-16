require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Stores.find_by(id: 1)
@store2 = Stores.find_by(id: 2)
# puts @store1.name
@store1.name = 'Langley'
@store1.save
# puts @store1.name