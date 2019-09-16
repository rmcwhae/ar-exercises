require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end
Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: 1, womens_apparel: 1)
Store.create(name: 'Richmond', annual_revenue: 1260000, womens_apparel: 1)
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: 1)

puts Store.count
