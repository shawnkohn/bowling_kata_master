# game_spec.rb

require './game'

describe Game do
	describe "#Score" do
		before :each do
			@game = Game.new
		end

		def rollMany(rolls, pins)
			(1..rolls).each { @game.roll(pins) }
		end
		
		it "score is 0 for an all gutter game" do
			rollMany(20, 0)
			@game.score.should == 0
		end

		it "score is 20 for rolling all ones" do
			rollMany(20, 1)
			@game.score.should == 20 
		end

		it "score is 16 for rolling one spare (5, 5, 3)" do
			rollMany(2, 5)
			@game.roll(3)
			rollMany(17, 0)
			@game.score.should == 16
		end
	end
end
