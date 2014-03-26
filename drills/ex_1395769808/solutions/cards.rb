
class Card
	attr_accessor :rank, :suit

	def initialize(rank, suit)
  	@rank = rank
  	@suit = suit
  end

  def to_s
  	puts "#{@rank} of #{@suit}s"
  end
end


class Deck

	attr_accessor :cards, :hidden_card

	def initialize
		ranks = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
 		suits = %w(Spade Heart Club Diamond)
		@cards = []
		@hidden_card
		ranks.each do |rank|
			@cards << Card.new(rank, suits[0])
			@cards << Card.new(rank, suits[1])
			@cards << Card.new(rank, suits[2])
			@cards << Card.new(rank, suits[3])
		end
	end

	def shuffle
		@cards.shuffle!
	end

	def choose_card
		@hidden_card = @cards.shuffle.pop
		puts "Ok, you've chosen a random card!"
	end

	def the_prestige
		return @hidden_card.to_s
	end
end

