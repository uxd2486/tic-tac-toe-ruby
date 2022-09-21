# frozen_string_literal: true

# this class represents a single square on the
# tic-tac-toe board
class Square
  attr_accessor :type

  def initialize(initial)
    @type = initial
  end

  def to_s
    @type.to_s
  end
end
