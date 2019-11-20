require_relative 'person'
require 'byebug'

class Enemy < Person
  def follows(p_position)

    diff_x = (@position[0] - position[0]).abs
    diff_y = (@position[1] - position[1]).abs

    if p_position[0] > @position[0]  && p_position[1] == @position[1]
      move(:right)
    elsif p_position[0] < @position[0]  && p_position[1] == @position[1]
      move(:left)
    elsif p_position[0] == @position[0] && p_position[1] >  @position[1]
      move(:down)
    elsif p_position[0] == @position[0] && p_position[1] <  @position[1]
      move(:up)
    elsif p_position[0] <  @position[0] && p_position[1] <  @position[1]
      diff_y > diff_x ? move(:up)   : move(:left)
    elsif p_position[0] <  @position[0] && p_position[1] >  @position[1]
      diff_y > diff_x ? move(:down) : move(:left)
    elsif p_position[0] >  @position[0] && p_position[1] <  @position[1]
      diff_y > diff_x ? move(:up)   : move(:right)
    elsif p_position[0] >  @position[0] && p_position[1] >  @position[1]
      diff_y > diff_x ? move(:down) : move(:right)
    else
      puts 'Something wrong'
    end
  end
end
