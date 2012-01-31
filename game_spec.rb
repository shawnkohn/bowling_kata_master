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
		
		it "should score 0 when rolling all gutter game" do
			rollMany(20, 0)
			@game.score.should == 0
		end

		it "should score 20 when rolling all ones" do
			rollMany(20, 1)
			@game.score.should == 20 
		end

		it "should score 16 when rolling one spare (5, 5, 3)" do
			rollMany(2, 5)
			@game.roll(3)
			rollMany(17, 0)
			@game.score.should == 16
		end

		it "should score 24 when rolling one strike(10, 3, 4)" do
			@game.roll(10)
			@game.roll(3)
			@game.roll(4)
			rollMany(16, 0)
			@game.score.should == 24
		end

		it "should score 300 when rolling perfect game (12 strikes)" do
			rollMany(12, 10)
			@game.score.should == 300
		end
	end
end
