#! /usr/bin/env ruby
# Julian Canepa
# Exercise 6: Decorator Pattern

# Do not modify this class. Pretend it is from a library that is "closed."
class HyperCar

  def initialize(sound)
    @sound = sound
  end

  def go
    3.times { puts @sound }
  end

end

# Do not modify this class. Pretend it is from a library that is "closed."
class CarService

  def initialize(car)
    @car = car
  end

  def execute
    @car.go
  end
end

hyper_car = HyperCar.new("bzzzz")
service = CarService.new(hyper_car)
service.execute

# Apply the decorator pattern to add new behavior
# without changing the HyperCar or CarService classes.
class CarDecorator
  def initialize(car)
    @car = car
  end

  def go
    puts "awooga!"
    @car.go
    puts "waka waka waka!"
  end
end

car_decorator = CarDecorator.new(hyper_car)
second_service = CarService.new(car_decorator)

second_service.execute
# Line above should print:
# > awooga!
# > bzzzz
# > bzzzz
# > bzzzz
# > waka waka waka!
