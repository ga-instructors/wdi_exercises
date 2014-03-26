#The Prestige

###Overview:
Create an object that simulates a deck of playing cards.  No we can use this deck to perform magic tricks!

###Spec:
####Part 1
* Create a ruby class called `cards`
* When a new instance of Card is created, it should have a randomly generated rank and suit
	* The idea is to emulate actual playing cards, so your ranks should be 2-Ace and your suits should be Spade, Heart, Club, and Diamond.
* Give the class a `to_s` method which will tell the user which card it is, i.e. "2 of Spades" or "Queen of Diamonds"


####Part 2
* Create a `deck` class which will emulate an entire deck of cards
* Upon creating a new instance of Deck, an entire deck of cards should be created
	* Remeber, since we are emulating an actual deck of cards, there should be no repeats.
* Write a `shuffle` method which will shuffle the deck

####Part 3
* Add a magic trick
	* The user is given a random card that can't be see by the magician (make sure the chosen card isn't printed to the console) 	
	* A seperate method, `the_prestige` should reveal the card