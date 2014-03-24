require 'pry'


module Superhero 
	def speak 
		puts "Hi citizen, I'm #{@name.reverse}, I can be your hero baby"
	end

	def jump(feet)
		puts "I just jumped #{feet} feet!"
	end

	def lift_mountain
		puts "I just lifted a bloody mountain!"
	end

	def shoot_web 
		puts "pshwewwww".upcase
	end

	def fly 
		puts "I'm flying."
	end
end


class Human 

	def initialize(options = {})
		@name = options[:name]
		@age = options[:age]
		@fav_col = ["red", "green", "blue"].sample

		# if @fav_col == "red"
		# 	self.extend(Superhero)
		# end
	end

	def speak 
		puts "Hi.  I'm, #{@name}, a human"
	end

	def jump(feet)
		if feet > 3
			puts "I cant jump that high"
		else 
			puts "I just jumped #{feet} feet!"
		end
	end
end

binding.pry