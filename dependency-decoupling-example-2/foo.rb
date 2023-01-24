require_relative "some-class"

class Foo
  attr_accessor :obj

  def initialize()
    self.run
  end

  def run
    @obj = SomeClass.new
    @obj.do_the_thing
  end
end

f = Foo.new

# override the base class and override the expensive production methods
class TestFoo < Foo
  def run
    @obj = SomeTestClass.new
    @obj.do_the_thing
  end
end

f = TestFoo.new