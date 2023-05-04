module Transportable
  def transport
  end
end

puts "hello"

class Car
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def ring_bell
    puts "Ring ring!"
  end
end

# car_01 = Car.new(color: "silver", make: "Honda", model: "Civic", drive_train: "2WD")
# bike_01 = Bike.new(speed: 14, direction: east)
# puts car_01
