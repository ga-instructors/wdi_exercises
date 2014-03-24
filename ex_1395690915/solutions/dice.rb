class Die 

	attr_accessor :result, :face

	def shake
		@result = rand(1..6)
	end

	def roll 
		self.shake
		@face = case @result 
			when 1 
				[" -------\n", "|       |\n", "|   *   |\n", "|       |\n", " -------"]
			when 2
				[" -------\n", "| *     |\n", "|       |\n", "|     * |\n", " -------"]
			when 3
				[" -------\n", "| *     |\n", "|   *   |\n", "|     * |\n", " -------"]
			when 4
				[" -------\n", "| *   * |\n", "|       |\n", "| *   * |\n", " -------"]
			when 5
				[" -------\n", "| *   * |\n", "|   *   |\n", "| *   * |\n", " -------"]
			when 6
				[" -------\n", "| *   * |\n", "| *   * |\n", "| *   * |\n", " -------"]
			else 
				"You dropped the die."
			end

			puts @face

	end


end


class Game 
	def initialize(num)
		@dice = num.times.map{Die.new}
		# Game.new(3)
		# @dice = [<Die Object>, <Die object>, <Die Object>]
	end

	def roll_dice 
		@dice.each{|die| die.roll}
		# @dice.each(&:roll)
		sum = @dice.map(&:result).reduce(:+)
		puts sum
	end

end


























