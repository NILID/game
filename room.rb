class Room
  attr_accessor :separator

  def initialize
    @sides = 10
    @separator = '. '
  end

  def get_room(position, e_position)
    @sides.times do |i|
      if position[0] == i+1
        pos_two = position[1]
        puts @separator * (pos_two-1) + '@ ' + @separator * (@sides - pos_two)
      elsif e_position[0] == i+1
        pos_two = e_position[1]
        puts @separator * (pos_two-1) + 'E ' + @separator * (@sides - pos_two)
      else
        puts @separator*@sides
      end
    end
    puts ''
  end
end
