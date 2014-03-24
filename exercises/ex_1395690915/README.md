#Roll Some Dice

###Overview:
* Dice should be shakable and rollable

###Spec:
* Define a Die class
	* a `shake` method should set an `@result` attribute on the die instance 	equal to a random between 1 and 6, inclusive.
	* a `roll` method should call the instance's `shake` method and print its `@result` variable to the screen.  Here is a string representation of a 6:

```ruby

[" -------\n", "| *   * |\n", "| *   * |\n", "| *   * |\n", " -------"]

``` 


* Define a Game class
	* Each game should include two dice.
	* A `roll_dice` method should call the `roll` method on each die and output the sum of both dice.

***Challenge:*** 
* A user can specify the number of dice they want in their game.

		
