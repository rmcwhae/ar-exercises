require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bart", last_name: "Simpson", hourly_rate: 20)
@store1.employees.create(first_name: "Steve", last_name: "Rogers", hourly_rate: 200)
@store2.employees.create(first_name: "Bruce", last_name: "Wayne", hourly_rate: 1000)
@store2.employees.create(first_name: "Captain", last_name: "Napalm", hourly_rate: 600)
@store2.employees.create(first_name: "Lois", last_name: "Lane", hourly_rate: 50)

p @store1.employees
p @store2.employees