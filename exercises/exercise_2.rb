require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1)
@store2 = Store.find(2)
p @store1
@store1.name = 'Langley'
@store1.save
p @store1
