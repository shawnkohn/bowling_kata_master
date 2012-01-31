# game.rb

class Game

	def initialize
		@rolls = Array.new
	end
	
	def roll(pins)
		@rolls.push(pins)
	end

	def score
		totalScore = 0
		numFrames = 10
		frameIndex = 0
		(1..numFrames).each do
			if @rolls[frameIndex] == 10
				totalScore += @rolls[frameIndex] + @rolls[frameIndex+1] + @rolls[frameIndex+2]
				frameIndex += 1
			elsif @rolls[frameIndex] + @rolls[frameIndex+1] == 10 
				totalScore += @rolls[frameIndex] + @rolls[frameIndex+1] + @rolls[frameIndex+2]
				frameIndex +=2
			else
				totalScore += @rolls[frameIndex] + @rolls[frameIndex+1]
				frameIndex += 2
			end
		end
		totalScore
	end

end
