module Rules
	def game_status
		return 'won' if winner?(board)
		return 'draw' if draw?(board)
		return 'in play'
	end

	def winner?
		return true if (row_win == true || column_win == true || diagonal_win == true)
		return false
	end

	def row_win
		return true if (board[0][0] == board[0][1] && board[0][1] == board[0][2] ||
										board[1][0] == board[1][1] && board[1][1] == board[1][2] ||
										board[2][0] == board[2][1] && board[2][1] == board[2][2]
										)
		return false
	end

	def column_win
		return true if (board[0][0] == board[1][0] && board[1][0] == board[2][0] || 
										board[0][1] == board[1][1] && board[1][1] == board[2][1] ||
										board[0][2] == board[1][2] && board[1][2] == board[2][2]
										)
		return false
	end

	def diagonal_win
		return true if (board[0][0] == board[1][1] && board[1][1] == board[2][2] ||
										board[0][2] == board[1][1] && board[1][1] == board[2][0]
										)
	end

	def draw?
		return true if 
	end

end


	 0  1   2
0 ['' '' '']
1 ['' '' '']
2 ['' '' '']
