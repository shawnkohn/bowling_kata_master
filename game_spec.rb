# game_spec.rb

require './game'

describe Game do
	describe "#Score" do
		it "score is 0 for an all gutter game" do
			game = Game.new
			20.times { game.roll(0) }
			game.score.should == 0
		end
	end
end
