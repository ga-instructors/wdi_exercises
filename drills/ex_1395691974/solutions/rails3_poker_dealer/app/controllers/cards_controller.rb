class CardsController < ApplicationController 
	
	def deal 
		@hand = Card.all.sample(5)
		i = 1
		until Hand.flush?(@hand)
			@hand = Card.all.sample(5)
			i += 1
		end

		@i = i

		@pairs = Hand.pairs?(@hand)
		@straight = Hand.straight?(@hand) ? "It's a striaght" : "not a straight"

	end

	def straight 
		@hand = []
		@hand << c1 = Card.where(num_value: 2..10).sample
		i = c1.num_value

		while @hand.length < 5
			@hand << Card.where(num_value: i+1).sample
			i += 1
		end

		@straight = Hand.straight?(@hand) ? "It's a striaght" : "not a straight"

	end

	def flush 
		suits = ["diams", "hearts", "clubs", "spades"]
		@hand = Card.where(suit: suits.sample).sample(5)
		@flush = Hand.flush?(@hand) ? "It's a flush" : "Not a flush"
	end


end