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

  def game_won?
    if @squares[0][0].type == @squares[0][1].type && @squares[0][1].type == @squares[0][2].type || # top row
       @squares[1][0].type == @squares[1][1].type && @squares[1][1].type == @squares[1][2].type || # middle row
       @squares[2][0].type == @squares[2][1].type && @squares[2][1].type == @squares[2][2].type || # bottom row
       @squares[0][0].type == @squares[1][0].type && @squares[1][0].type == @squares[2][0].type || # left column
       @squares[0][1].type == @squares[1][1].type && @squares[1][1].type == @squares[2][1].type || # middle column
       @squares[0][2].type == @squares[1][2].type && @squares[1][2].type == @squares[2][2].type || # right column
       @squares[0][0].type == @squares[1][1].type && @squares[1][1].type == @squares[2][2].type || # left diagonal
       @squares[0][2].type == @squares[1][1].type && @squares[1][1].type == @squares[2][0].type # right diagonal
      true
    else
      false
    end
  end

  def full?
    @squares.none? { |row| row.any? { |square| square.type.nil? } }
  end

  def display
    puts "#{@squares[0][0]} | #{@squares[0][1]} | #{@squares[0][2]}"
    puts "#{@squares[1][0]} | #{@squares[1][1]} | #{@squares[1][2]}"
    puts "#{@squares[2][0]} | #{@squares[2][1]} | #{@squares[2][2]}"
  end
end
