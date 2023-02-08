class Score
  def initialize
    @score = 0
    @listeners = []
    @score_under_100 = true
  end

  def add_score(x)
    @score = @score + x
    if (@score >= 100 and @score_under_100)
      broadcast()
      @score_under_100 = false
    end
    puts "Score: #{@score}"
  end

  def register(listener)
    @listeners.push(listener)
  end

  def unregister(listener)
    @listeners.delete(listener)
  end

  def broadcast()
    for o in @listeners do
      o.callback()
    end
  end
end

class Observer
  def initialize(score)
    score.register(self)

    print(self)
    puts " registered"
  end

  def callback
    puts "I was called once the score reached 100!"
  end
end

# objects want to know when the score reaches 100 or more
# - Register their interest in the event
# - Get some kind of callback on the event
# - Unregister their interest

s = Score.new

o1 = Observer.new(s)
o2 = Observer.new(s)

s.add_score(20)
s.add_score(10)
s.add_score(300)