# frozen_string_literal: true

require_relative 'square'

# this class represents the entire tic-tac-toe board
class Board
  def initialize
    @squares = []
    3.times do
      row = []
      3.times do
        row << Square.new
      end
      @squares << row
    end
  end

  def set_square(row, column, symbol)
    square = @squares[row][column]
    if square.type.nil?
      square.type = symbol
    else
      puts "ERROR: Square (#{row}, #{column}) has already been taken!"
    end
  end
end
