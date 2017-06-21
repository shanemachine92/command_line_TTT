RSpec.describe Board do
	let(:board) {Board.new}
	it 'intializes an empty board' do
		board = Board.new
		expect(board.get_cell(0,0).to eq(""))
	end

	it 'returns true if a cell is taken'
	it 'records location of a piece'
	it 'displays a piece in play'
end
