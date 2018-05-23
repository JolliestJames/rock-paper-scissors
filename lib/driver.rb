#! /usr/bin/env ruby
require_relative 'game'

game = Game.new
game.start

puts "Playing Rock, Paper, Scissors!"
puts "Rock vs Scissors:"
puts game.play(:rock, :scissors)
game.start
puts "Scissors vs Rock:"
puts game.play(:scissors, :rock)
game.start
puts "Rock vs Paper:"
puts game.play(:rock, :paper)
game.start
puts "Paper vs Rock:"
puts game.play(:paper, :rock)
game.start
puts "Scissors vs Paper:"
puts game.play(:scissors, :paper)
game.start
puts "Paper vs Scissors:"
puts game.play(:paper, :scissors)
game.start
puts "Tie games:"
puts game.play(:rock, :rock)
game.start
puts game.play(:paper, :paper)
game.start
puts game.play(:scissors, :scissors)
