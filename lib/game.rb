# frozen_string_literal: true

require_relative 'board'

def play_game
  puts "Let's begin!"
  board = Board.new
  cur_player = :X
  board.display
  puts 'Enter the number of the square you wish to play'
  until board.full?
    print "Player #{cur_player}: "
    number = gets.chomp
    unless number.to_i.to_s == number
      puts 'ERROR: Please enter a number.'
      next
    end
    result = board.set_square(number.to_i, cur_player)
    next if result != cur_player

    board.display
    if board.game_won?
      puts "#{cur_player} won!"
      break
    end
    cur_player = cur_player == :X ? :O : :X
  end
end

play_game
