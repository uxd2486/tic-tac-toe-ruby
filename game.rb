# frozen_string_literal: true

require_relative 'board'

def play_game
  board = Board.new
  cur_player = :X
  board.display
  puts 'Enter the number of the square you wish to play: '
  until board.full?
    puts "Player #{cur_player}: "
    number = gets.chomp.to_i
    result = board.set_square(number, cur_player)
    next if result != cur_player

    board.display
    if board.game_won?
      puts "#{cur_player} won!"
      break
    end
    cur_player = cur_player == :X ? :O : :X
  end
end
