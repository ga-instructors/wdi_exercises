#1000 Sinatras

###Overview:
* Objects, Sinatra, and Faker bring use 1000 names to enjoy

###Spec 1:
* Create a Person class
	* A person should have a `first_name`
	* A person should have a `last_name`
	* A person should have an `email`address that is reasonable given their first and last names.
* Instantiate 1000 instances of your class using the Faker gem and store them in an array.

###Spec 2:
* Create a Sinatra app to dislay your Person instances. 
	* An http GET request to '/' should show a table of all people and their associated attributes.
	* Even rows should be `lightpink`.
	* Odd rows should be `lightgreen`.
