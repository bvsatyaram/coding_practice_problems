class Vehicle
  def horn
    puts "Pom"
  end
end

class Car < Vehicle
end

class Cycle < Vehicle
  def horn
    puts "Tring"
  end
end

class FunkyBike < Cycle
  def horn
    super
    puts "Pooooooooooooooooom"
  end
end

generic_vehicle = Vehicle.new
my_car = Car.new
my_cycle = Cycle.new