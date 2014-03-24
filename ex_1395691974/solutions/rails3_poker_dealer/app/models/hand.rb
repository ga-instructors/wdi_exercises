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

    def straight?(hand)
      num_values = hand.map{|card| card.num_value}
      num_values.uniq!
      return num_values.max - num_values.min == 4 && num_values.length == 5
    end

    def flush?(hand)
      suits = hand.map{|card| card.suit}
      return suits.uniq.length == 1
    end

  end

end
