require './board'
require './player'
require './rules'

class Game
	include Rules

	def initialize
		@board = Board.new
		@player1 = Player.new
		@player2 = Player.new
	end

	private

	def play_game(board, players)
		puts 'P'

	end

	def switch_players
	end 

	def get_move

	end

	def game_over
	end
end
