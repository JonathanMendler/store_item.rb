# class Employee
#   attr_reader :first_name, :last_name, :salary, :active
#   attr_writer :active

#   def initialize(input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @salary = input_options[:salary]
#     @active = input_options[:active]
#   end

#   def create
#   end

#   def read
#   end

#   def updadte
#   endbun

#   def delete
#   end

# end

# table = TTY::["first_name", "last_name", "salary", "active"]
gem "tty-table"
table = TTY::Table.new(["first_name", "last_name", "salary", "active"][["Majora", "Carter", 80000, true]
["Danilo", "Campos", 70000, true]])
puts table.render(:ascii)

