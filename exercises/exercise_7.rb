require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# Store.create(name: gets.chomp)
puts 'Enter a store name:'
new_store = Store.create(name: gets.chomp, annual_revenue: 300_000, mens_apparel: false)

new_store.errors.full_messages.each do |message|
  puts message
end
