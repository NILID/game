require_relative 'person'

class Enemy < Person
  def move(position)
    diff_y = (@position[0] - position[0]).abs
    diff_x = (@position[1] - position[1]).abs
    if diff_y > diff_x
      @position[1] > position[1] ?
        (@position[1] -= 1 if position[1] > 1) : (@position[1] +=1 if position[1] < 1)
    elsif diff_y < diff_x
      @position[0] > position[0] ?
        (@position[0] -= 1 if position[0] > 1) : (@position[0] +=1 if position[0] < 1)
    else
      puts "you win!"
    end
  end
end