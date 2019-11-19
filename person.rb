
class Person
  attr_accessor :position 

  def initialize
    @position=rand_position
  end

  def rand_position
    @position = [rand(1..10),rand(1..10)]
  end

  def move(side)
    case side
    when :left
      @position[1] -= 1 if position[1] > 1
    when :right
      @position[1] += 1 if position[1] < 10
    when :up
      @position[0] -= 1 if position[0] > 1
    when :down
      @position[0] += 1 if position[0] < 10
    else
      puts "no such side ##{side}, try again!"
    end
  end
end