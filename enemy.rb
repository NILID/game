require_relative 'person'
require 'byebug'

class Enemy < Person
  def move(p_position)

    diff_x = (@position[0] - position[0]).abs
    diff_y = (@position[1] - position[1]).abs

    if p_position == @position
      puts 'You win!'
    elsif p_position[0] > @position[0]  && p_position[1] == @position[1]
      @position[0] +=1
    elsif p_position[0] < @position[0]  && p_position[1] == @position[1]
      @position[0] -=1
    elsif p_position[0] == @position[0] && p_position[1] >  @position[1]
      @position[1] +=1
    elsif p_position[0] == @position[0] && p_position[1] <  @position[1]
      @position[1] -=1
    elsif p_position[0] <  @position[0] && p_position[1] <  @position[1]
      diff_y > diff_x ? (@position[1] -=1) : (@position[0] -=1)
    elsif p_position[0] <  @position[0] && p_position[1] >  @position[1]
      diff_y > diff_x ? (@position[1] +=1) : (@position[0] -=1)
    elsif p_position[0] >  @position[0] && p_position[1] <  @position[1]
      diff_y > diff_x ? (@position[1] -=1) : (@position[0] +=1)
    elsif p_position[0] >  @position[0] && p_position[1] >  @position[1]
      diff_y > diff_x ? (@position[1] +=1) : (@position[0] +=1)
    else
      puts "!!!!!!!strange thing!!!!!!!!"
    end
  end
end
