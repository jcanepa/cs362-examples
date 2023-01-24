require_relative "some-class"

class Foo
  attr_accessor :obj

  def initialize
    @obj = SomeClass.new
  end

  def run
    @obj.do_the_thing
  end
end

f = Foo.new
f.run