require_relative '../../models/player'
require_relative '../../models/board'

RSpec.describe Player  do
  let (:board) {Board.new}
  let (:player) {Player.new('shane', 'T', board)}
	
  describe '#take_turn' do
    it 'should record a player turn' do
      player.take_turn('one')
      expect(board.cells[:one]).to eq('T')
    end
	end
end
