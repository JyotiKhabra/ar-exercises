require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'



puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
end

class Store < ActiveRecord::Base
  has_many :employees
end


@store1 = Store.find_by(id: 1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sonia", last_name: "Woo", hourly_rate: 60)
@store1.employees.create(first_name: "Saniya", last_name: "Sood", hourly_rate: 60)
@store1.employees.create(first_name: "Ryan", last_name: "Woo", hourly_rate: 60)

@store2 = Store.find_by(id: 2)
@store2.employees.create(first_name: "Nikita", last_name: "Sachar", hourly_rate: 60)
@store2.employees.create(first_name: "Cass", last_name: "Boos", hourly_rate: 60)
@store2.employees.create(first_name: "Tom", last_name: "Cruise", hourly_rate: 60)
@store2.employees.create(first_name: "Jose", last_name: "Cruz", hourly_rate: 60)