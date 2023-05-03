#product_01 = { :color => "green", :price => 12, :inventory => 36 }
#product_02 = { :color => "orange", :price => 14, :inventory => 7 }
#product_03 = { :color => "red", :price => 28, :inventory => 11 }

#puts "#{product_01[:color]}"

class Product
  def initialize(color, price, inventory)
    @color = color
    @price = price
    @inventory = inventory
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

product_01 = Product.new("green", 12, 36)
product_02 = Product.new("orange", 14, 7)
product_03 = Product.new("red", 28, 11)
puts product_01.color
product_02.print_info
puts product_01.add_tax
