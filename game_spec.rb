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
		
		it "test all gutter game" do
			rollMany(20, 0)
			@game.score.should == 0
		end

		it "test rolling all ones" do
			rollMany(20, 1)
			@game.score.should == 20 
		end

		it "test rolling one spare" do
			rollMany(2, 5)
			@game.roll(3)
			rollMany(17, 0)
			@game.score.should == 16
		end

		it "test rolling one strike" do
			@game.roll(10)
			@game.roll(3)
			@game.roll(4)
			rollMany(16, 0)
			@game.score.should == 24
		end
	end
end
