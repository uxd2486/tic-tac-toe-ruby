# frozen_string_literal: true

require_relative 'square'

# this class represents the entire tic-tac-toe board
class Board
  def initialize
    @squares = []
    9.times do |i|
      @squares << Square.new(i)
    end
  end

  def set_square(number, symbol)
    square = @squares[number]
    if square.type.is_a? Integer
      square.type = symbol
    else
      puts "ERROR: Square (#{row}, #{column}) has already been taken!"
    end
  end

  def game_won?
    if @squares[0].type == @squares[1].type && @squares[1].type == @squares[2].type || # top row
       @squares[3].type == @squares[4].type && @squares[4].type == @squares[5].type || # middle row
       @squares[6].type == @squares[7].type && @squares[7].type == @squares[8].type || # bottom row
       @squares[0].type == @squares[3].type && @squares[3].type == @squares[6].type || # left column
       @squares[1].type == @squares[4].type && @squares[4].type == @squares[7].type || # middle column
       @squares[2].type == @squares[5].type && @squares[5].type == @squares[8].type || # right column
       @squares[0].type == @squares[4].type && @squares[4].type == @squares[8].type || # left diagonal
       @squares[2].type == @squares[4].type && @squares[4].type == @squares[6].type # right diagonal
      true
    else
      false
    end
  end

  def full?
    @squares.none? { |square| square.type.is_a? Integer }
  end

  def display
    puts <<-HEREDOC
       #{@squares[0]} | #{@squares[1]} | #{@squares[2]}
      ---+---+---
       #{@squares[3]} | #{@squares[4]} | #{@squares[5]}
      ---+---+---
       #{@squares[6]} | #{@squares[7]} | #{@squares[8]}
    HEREDOC
  end
end
