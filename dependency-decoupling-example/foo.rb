require_relative "some-class"

class Foo
  attr_accessor :obj

  def initialize(new_obj)
    @obj = new_obj
  end

  def run
    @obj.do_the_thing
  end
end

production_class = SomeClass.new
f = Foo.new(production_class)
f.run

test_class = SomeTestClass.new
f = Foo.new(test_class)
f.run