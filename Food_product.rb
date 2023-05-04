require "./store_item.rb"
require "./store_module.rb"

class Food < Product
  def initialize(input_options)
    super
    @shelf_life = input_options[shelf_life:]
  end

  def food_info
    puts "The item is #{color} and is selling for #{price}. We have #{inventory} in stock. Item needs to be sold or removed from display within #{shelf_life}"
  end
end
