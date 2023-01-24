class SomeClass
  def do_the_thing
    puts "does something complicated"
  end
end

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