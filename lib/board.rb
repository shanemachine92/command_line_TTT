class Board 
	attr_accessor :cells
	def initialize 
		@cells = {
			one: '', two: '', three: '',
			four: '', five: '', six: '',
			seven: '', eight: '', nine: '',
		}
	end

	def cell_open?
		return
	end

	def game_won?
		return true if row_win = true || column_win == true || diagonal_win == true
	end

	def render
    puts "#{@cells[:one]}|#{@cells[:two]}|#{@cells[:three]}"
    puts '-----'
    puts "#{@cells[:four]}|#{@cells[:five]}|#{@cells[:six}"
    puts '-----'
    puts "#{@cells[:seven]}|#{@cells[:eight]}|#{@cells[:nine]}"
  end

		def board_rows
    rows = [
      [@cells[:one], @cells[:two], @cells[:three]],
      [@cells[:four], @cells[:five], @cells[:six]],
      [@cells[:seven], @cells[:eight], @cells[:nine]]
    ]
  end

  def board_columns
    columns = [
      [@cells[:one], @cells[:four], @cells[:seven]],
      [@cells[:two], @cells[:five], @cells[:eight]],
      [@cells[:three], @cells[:six], @cells[:nine]]
    ]
    
  end

  def board_diagonals
     diagonals = [
      [@cells[:one], @cells[:five], @cells[:nine]],
      [@cells[:three], @cells[:five], @cells[:seven]],
    ]
  end
end
