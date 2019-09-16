require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Stores < ActiveRecord::Base
end
Stores.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: 1, womens_apparel: 1)
Stores.create(name: 'Richmond', annual_revenue: 1260000, womens_apparel: 1)
Stores.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: 1)

puts Stores.count
