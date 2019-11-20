class Person
  attr_accessor :position

  def initialize
    @position = rand_position
  end

  def rand_position
    @position = [rand(0..9),rand(0..9)]
  end

  def move(side)
    case side
    when :left
      @position[0] -= 1 if position[0] > 0
    when :right
      @position[0] += 1 if position[0] < 9
    when :up
      @position[1] -= 1 if position[1] > 0
    when :down
      @position[1] += 1 if position[1] < 9
    else
      puts "No such side ##{side}, your step was skipped!"
    end
  end
end