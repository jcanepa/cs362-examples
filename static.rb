class Static
  def from_an_instance
    "Hello from an obj"
  end

  def self.from_a_class
    "Hello from the class"
  end
end

# a class object
s = Static.new
puts s.from_an_instance

# evoke a class method (no instantiation)
puts Static.from_a_class