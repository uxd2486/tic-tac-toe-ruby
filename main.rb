# frozen_string_literal: true

require_relative 'game'

def start_game
  puts 'Would you like to play a game? \'y\' to start, \'n\' to exit'
  answer = gets.chomp.downcase
  play_game if answer == 'y'
  nil
end

start_game
