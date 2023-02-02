class Refrigerator

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    @height = height
    @width = width
    @depth = depth
  end

  def add(beverage); end
end

class IceBoxRefrigerator < Refrigerator; end
class BrokenRefrigerator < Refrigerator; end

class RootBeer; end
class Kombucha; end

class Kitchen

  def initialize(refrigerator = IceBoxRefrigerator.new)
    @refrigerator = refrigerator
  end

  def add_beverage_to_refridgerator(beverage)
    @refrigerator.add( beverage )
  end

  def add_beer_to_refrigerator
    add_beverage_to_refridgerator( RootBeer.new )
  end

  def to_s
    fridge_volume = @refrigerator.height * @refrigerator.width * @refrigerator.depth
    fridge_volume_gallons = fridge_volume * 7.48052
    "Kitchen. Fridge volume = #{fridge_volume_gallons} gallons"
  end

end

# Usage example:

refrigerator = IceBoxRefrigerator.new
kitchen = Kitchen.new(refrigerator)
kitchen.add_beer_to_refrigerator
puts kitchen

# kitchen has an IceBoxRefrigerator with a RootBeer in it.

# Problem: you can't create a kitchen with a different fridge, and you can't
#          add any beverage other than beer.

# Goal: Create a kitchen with a BrokenRefrigerator, and add Kombucha to it.
kitchen = Kitchen.new(BrokenRefrigerator.new)
kitchen.add_beverage_to_refridgerator(Kombucha.new)
puts kitchen
