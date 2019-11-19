require_relative 'room'
require_relative 'person'
require_relative 'enemy'

class Game

  def initialize
    @person = Person.new
    @enemy = Enemy.new
    @room = Room.new
    init_room = 
      @room.get_room(@person.position, @enemy.position)
  end

  def init
    move = :none
    while move != :end
      print "Your move: "
      move = gets.chomp.to_sym

      @person.move(move)
      @enemy.move(@person.position)
      @room.get_room(@person.position,
        @enemy.position)
    end
  end
end

@game = Game.new
@game.init