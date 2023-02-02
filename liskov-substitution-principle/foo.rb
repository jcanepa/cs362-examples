class Rectangle
  attr_accessor :width, :height

  def initialize(width=1, height=1)
    @width = width
    @height = height
  end

  def get_area()
    return @width * @height
  end
end

class Square < Rectangle
  def initialize(side=2)
    super(side, side)
  end
end

# this specific test will only work for rectangles, and not squares
def test_rectangle(r)
  r.set_width(4)
  r.set_height(3)
  raise "area does not match expected value" unless (r.get_area == 12)
end

test_rectangle(Rectangle.new(4, 3))
test_rectangle(Square.new(4)) # LSP - this should still work with a shape that "is a" rectangle