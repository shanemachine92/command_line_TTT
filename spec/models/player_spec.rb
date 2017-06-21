class Player < ActiveRecord::Base
	attr_accessor :name, :piece

  def initialize(name, piece)
    @name = name
    @piece = piece
  end
end
