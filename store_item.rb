product_01 = { :color => "green", :price => 12, :inventory => 36 }
product_02 = { :color => "orange", :price => 14, :inventory => 7 }
product_03 = { :color => "red", :price => 28, :inventory => 11 }

puts "#{product_01[:color]}"

Class.Product

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
end

product_01.new=("green", 12, 36)
product_02.new=("orange", 14, 7)