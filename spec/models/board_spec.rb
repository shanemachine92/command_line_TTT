RSpec.describe Board, :type => :model do
	let(:board) {Board.new}

	it 'intializes an empty board' do
		expect(@cells[:one]).to eq(' ')
	end

	it 'returns false for cell_empty? if a cell not empty' do
		@cells[:three] = 'M'
		expect(@board.cell_empty?(threee)).to eq(false)
	end

	it 'returns win? true if a win condition is met' do
	   @cells = {
      one: 'T', two: ' ', three: ' ',
      four: ' ', five: 'T', six: ' ',
      seven: ' ', eight: ' ', nine: 'T',
    }

    expect(@board.win?).to be (true)
  end
end
