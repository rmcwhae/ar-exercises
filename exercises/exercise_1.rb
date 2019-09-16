# frozen_string_literal: true

require_relative '../setup'

puts 'Exercise 1'
puts '----------'

# Your code goes below here ...
Store.create(name: 'Burnaby', annual_revenue: 300_000, mens_apparel: 1, womens_apparel: 1)
Store.create(name: 'Richmond', annual_revenue: 1_260_000, womens_apparel: 1)
Store.create(name: 'Gastown', annual_revenue: 190_000, mens_apparel: 1)

puts Store.count
