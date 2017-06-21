class Game

	puts 'Hello! Time to decide the fate of Ferelden in Templars vs. Mages'

	puts 'Templar, what is your name?'
	player1_name = gets.chomp

	puts 'Mage, what is your name?'
	player2_name = gets.chomp


	board = Board.new
	player1 = Player.new(player1_name, 'T')
	player2 = Player.new(player2_name, 'M')
	win = false
	draw = false
	current_player = player1

	def switch_player
		if current_player == player1
			player2
		else
			player1
		end
	end

	def game_play
		until win = true || draw = true
			board.render
			puts 'Your turn, #{current_player.name}'
		end
	end

end

class Player
	attr_accessor :name, :piece

  def initialize(name, piece='')
    @name = name
    @piece = piecesa
  end
end


