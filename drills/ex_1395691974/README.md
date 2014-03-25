#Poker Dealer

###Overview:

* Let's lay the foundations for a poker game...

###Spec:
##Part 1
* Create a rails app called `poker_dealer` usings a postgresql database. 
* Create a `card` model.  It should have: 
	* value ~ a string
	* num_value ~ an integer
	* suit ~ a string
* Seed your database with all 52 cards.
* Create a `hand` model (lol).  It should have: 
	* a class method `pairs?` that takes an array of `cards` and determines whether or not their are any duplicates.  Make your method return a hash with keys corresponding to duplicate values, and values corresponding to the number of times the key appears. If you have an array containing the following values:

``` ruby 

	[2,2,3,5,5,5]
	
```

...the method should return the following hash:

``` ruby 

	{:2 => 2, :5 => 3}

```
* A GET request to '/deal' should display five randomly selected cards from the database.  Is should also list out any duplicate, triplicate, or quadruplicate values in your hand.

##Part 2 

* The class method `Hand.straight?` should determine whether or not a given hand contains a set of 5 consecutive cards.
* A GET request to '/straight' should hit the action `cards#straight`.
* A random straight, that is, a set of 5 consecutive cards should be rendered in a view

 
## Part 3


* a GET request to '/flush' should hit a `cards#flush` action in your controller. 
*  Your `flush` action will use an ActiveRecord query to pull a set of 5 cards, each of the same suit, from your database.
*  The cards should be rendered in an appropriate view.

* Create a class method`Hand.flush?` that takes a set of five cards as an argument and determines whether or not they constitute a flush.

####***Challenge:***

* Modify your deal method to deal only flushes.  Do not query active record specifically for Cards of a particular suit.  Rather, keep querying the database for a random set of 5 cards until you get a flush.  Keep track of the number of times you hit the database and render that number in your view.
