require "./store_item.rb"
require "./food_product.rb"

module Printable
  def print_info
    puts "The item is #{color} and is selling for #{price}. We have #{inventory} in stock."
  end
end
