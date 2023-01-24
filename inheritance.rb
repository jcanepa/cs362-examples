class Vehicle
  def make_sound
    puts "[generic engine noises]"
  end
end

class Car < Vehicle
  def make_sound
    puts "vroom"
  end
end

class Motorcycle < Vehicle
  def make_sound
    puts "brahp"
  end
end

v = Vehicle.new
puts v.make_sound

c = Car.new
puts c.make_sound

m = Motorcycle.new
puts m.make_sound