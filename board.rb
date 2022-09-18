# frozen_string_literal: true

require_relative 'square'

# this class represents the entire tic-tac-toe board
class Board
  attr_accessor :squares

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
end
