require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: 'Surrey', annual_revenue: 224000, womens_apparel: 1)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: 1)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: 1, womens_apparel: 1)

@mens_stores = Store.where(mens_apparel: 1)
@mens_stores.each do |store|
  # puts 'Store: ' + store.name + ' Revenue: ' + store.annual_revenue.to_s
end

@womens_stores = Store.where('annual_revenue < 1000000').where(womens_apparel: 1)
@womens_stores.each do |store|
  #puts 'Store: ' + store.name + ' Revenue: ' + store.annual_revenue.to_s
end
