# frozen_string_literal: true

# this class represents a single square on the
# tic-tac-toe board
class Square
  attr_accessor :type

  def initialize
    @type = nil
  end

  def to_s
    if type.nil?
      ' '
    else
      type.to_s
    end
  end
end
