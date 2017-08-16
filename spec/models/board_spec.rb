require_relative '../../models/board'

RSpec.describe Board, :type => :model do
	let(:board) {Board.new}

	it 'intializes an empty board' do
		expect(board.cells[:one]).to eq(' ')
	end

	it 'returns false for cell_empty? if a cell not empty' do
		board.cells[:three] = 'M'
		expect(board.cell_empty?(:three)).to eq(false)
	end

	it 'game_won returns true if a win condition is met' do
	   board.cells = {
      one: 'T', two: ' ', three: ' ',
      four: ' ', five: 'T', six: ' ',
      seven: ' ', eight: ' ', nine: 'T',
    }

    expect(board.game_won?('T')).to be(true)
  end
end
