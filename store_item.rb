#product_01 = { :color => "green", :price => 12, :inventory => 36 }
#product_02 = { :color => "orange", :price => 14, :inventory => 7 }
#product_03 = { :color => "red", :price => 28, :inventory => 11 }

#puts "#{product_01[:color]}"

class Product
  attr_reader :color, :price, :inventory
  attr_writer :add_tax

  def initialize(input_options)
    @color = input_options[color:]
    @price = input_options[price:]
    @inventory = input_options[inventory:]
  end

  def color
    @color
  end

  def price
    @price
  end

  def inventory
    @inventory
  end

  def add_tax
    @price = 1.06 * @price
  end

  def print_info
    puts "The item is #{color} and is selling for #{price}. We have #{inventory} in stock."
  end
end

class Food < Product
  def initialize(input_options)
    super
    @shelf_life = input_options[shelf_life:]
  end

  def food_info
    puts "The item is #{color} and is selling for #{price}. We have #{inventory} in stock. Item needs to be sold or removed from display within #{shelf_life}"
end

product_01 = Product.new(color: "green", price: 12, inventory: 36)
product_02 = Product.new(color: "orange", price: 14, inventory: 7)
product_03 = Product.new(color: "red", price: 28, inventory: 11)
food_product_01 = Food.new(color: "yellow", price: 6, inventory: 27, shelf_life: "6 days")
puts product_01.color
product_02.print_info
puts product_01.add_tax
puts product_03
