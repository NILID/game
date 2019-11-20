#!/usr/bin/env ruby

require_relative 'room'
require_relative 'person'
require_relative 'enemy'

class Game

  def initialize
    @person = Person.new
    @enemy  = Enemy.new
    @room   = Room.new
    init_room = @room.get_room(@person.position, @enemy.position)
  end

  def init
    move = :none

    while @person.position != @enemy.position
      break if%i[end exit quit].include? move
      print "Your move: (up|down|left|right|exit) "
      move = gets.chomp.to_sym

      @person.move(move)
      @enemy.follows(@person.position)

      @room.get_room(@person.position, @enemy.position)
    end
    puts ' You died '.white.on_red.blink
  end
end

@game = Game.new
@game.init