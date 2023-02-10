# TODO: Your Name
# Exercise 5: Observer Pattern

class WeatherStation

  attr_accessor :temperature

  def initialize
    @temperature = 0
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def temperature=(new_temperature)
    @temperature = new_temperature
    @observers.each do |o|
      o.notify(self)
    end
  end

end

# TODO: Define a StationObserver class
#       A StationObserver should have one
#       method named notify.

weather_station = WeatherStation.new
# TODO: Add a new observer to the weather station

weather_station.temperature = 72
