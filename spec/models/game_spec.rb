RSpec.describe Game  do
	let(:game) {Game.new.play_game}

	it 'has a game over status of false' do
		expect(@game_over).to eq false
	end
	it 'has a count of total moves with default value of zero' do
		expect(@total_moves).to eq(0)
	end
end
