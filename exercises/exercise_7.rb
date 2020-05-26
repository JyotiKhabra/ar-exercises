require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative '../lib/employee'
require_relative '../lib/store'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "User provide a store name"
name_gotten = gets.chomp

@new_store = Store.create(name: name_gotten)
@new_store.save

@new_store.each do |store|
  puts store
end


