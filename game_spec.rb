# game_spec.rb

require './game'

describe Game do
	describe "#Score" do
		it "score is 0 for an all gutter game" do
			game = Game.new
			20.times { game.roll(0) }
			game.score.should == 0
		end

		it "score is 20 for rolling all ones" do
			game = Game.new
			20.times { game.roll(1) }
			game.score.should == 20 
		end
	end
end
