# frozen_string_literal: true

require_relative 'board'

def play_game
  board = Board.new
  cur_player = :X
  puts 'Enter the square you wish to play as "[row],[column]", no spaces'
  until board.full?
    puts "Player #{cur_player}: "
    input = gets.chomp.split(',')
    row = input[0].to_i
    column = input[1].to_i
    result = board.set_square(row, column, cur_player)
    next if result != cur_player

    board.display
    if board.game_won?
      puts "#{cur_player} won!"
      break
    end
    cur_player = cur_player == :X ? :O : :X
  end
end
