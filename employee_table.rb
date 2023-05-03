class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
    
table = TTY::["first_name", "last_name", "salary", "active"]
table = TTY::Table.new["Majora", "Carter", 80000, true]
table = TTY::Table.new["Danilo", "Campos", 70000, true]