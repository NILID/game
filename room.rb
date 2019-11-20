require 'colorize'

class Room
  attr_accessor :separator

  def initialize
    @sides = 10
    @separator = '. '
    @enemy_icon = 'E '.red
    @person_icon = '@ '.blue
  end

  def get_room(position, e_position)
    return 'You Win' if position == e_position
    @sides.times do |i|
      if position[0] == i && position[0] == e_position[0]
        if position[1] > e_position[1]
          puts @separator * (e_position[1]) + @enemy_icon + @separator*(position[1] - e_position[1] - 1) + @person_icon + @separator * (@sides - position[1]-1)
        elsif position[1] < e_position[1]
          puts @separator * (position[1]) + @person_icon + @separator*(e_position[1] - position[1] - 1) + @enemy_icon + @separator * (@sides - e_position[1]-1)
        else
          puts 'You Win' # rebuild to break equal
        end
      elsif position[0] == i
        pos_two = position[1]
        puts build_left_separators(pos_two, @person_icon) + build_right_separators(pos_two)
      elsif e_position[0] == i
        pos_two = e_position[1]
        puts build_left_separators(pos_two, @enemy_icon) + build_right_separators(pos_two)
      else
        puts @separator*@sides
      end
    end
    puts ''
  end

  def build_left_separators(position, separator)
    @separator * position + separator
  end

  def build_right_separators(position)
    @separator * (@sides - position - 1)
  end
end
