class Hand < ActiveRecord::Base
  # attr_accessible :title, :body
  class << self 
  	def pairs?(cards)

  		# [3,3,4,5,6,6]
  		num_values = cards.map{|card| card.value}
  		pairs = {}
  		num_values.each do |value|
  			if num_values.count(value) > 1
  				pairs[value] = num_values.count(value)
  			end
  		end
  		# {:3 => 2, :6 => 2}
  		return pairs
  	end
  end

end
