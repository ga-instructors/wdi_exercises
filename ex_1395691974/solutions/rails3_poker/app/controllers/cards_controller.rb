class CardsController < ApplicationController 
	
	def deal 
		deck = Card.all
		deck.shuffle!
		@hand = deck.shift(5)
		@pairs = Hand.pairs?(@hand)
	end

end