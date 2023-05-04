class Vehicle
  def initialize(input_options)
    @color = input_options[color:]
    @make = input_options[make:]
    @model = input_options[model:]
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
end

class Car < Vehicle
  def drive_train
    @drive_train = input_options[drive_train:]
  end

  def fuel_type
    @fuel_type = input_options[fuel_type:]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def frame_material
    @frame_material = input_options[frame_material:]
  end

  def weight
    @weight = input_options[weight:]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car_01 = Car.new(color: "silver", make: "Honda", model: "Civic", drive_train: "2WD")
bike_01 = Bike.new(speed: 14, direction: east)
puts car_01
