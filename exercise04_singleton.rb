class Sky

  @@instance_count = 0
  @@singleton = nil

  private_class_method :new

  private def initialize
    @@instance_count += 1
    @id = @@instance_count
  end

  def self.instance
    @@singleton = new unless @@singleton

    return @@singleton
  end

  def to_s
    "I am sky object #{@id} of #{@@instance_count} total instances."
  end
end

# Sky.new no longer works
puts Sky.instance
puts Sky.instance
puts Sky.instance
puts Sky.instance

# verify equality of instances
puts Sky.instance == Sky.instance
