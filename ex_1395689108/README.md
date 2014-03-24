#Sinatra says I want to see Junk People

###Overview:
Lets use Sinatra create users and then browse through our users!

###Spec:
####Part 1

* Create a hash with 1000 User objects with junk data.
	* key should be their id_number (auto*increment this)
	* value should be the User object
			
####Part 2

* Write a Sinatra application using the hash you created in part 1
* Write a get request to display every value in the hash between two numbers
	* `EXAMPLE`: A request to '/50/275' should display every value in the hash that has key between 50 and 275.  Do this using an an ordered or unordered list.
	* `EXAMPLE`: A request to '/438/917' should display every value in the hash that has key between 438 and 917.  Do this using an an ordered or unordered list.
