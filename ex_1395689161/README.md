#Faker + Zodiac

###Overview:
* Make some fake hippies!  It's going to be totally out-of-sight!

###Spec:
* Create a Sinatra app 
* Using Faker and the Zodiac gem, create a person class. 
	* A person should have a `name`
	* A person should have a `birthday`
		* This is one way to get a random date : `Time.at(rand * Time.now.to_i)`
	* A person shold have a zodiac sign.
		* Refer to the Zodiac gem documentation to figure out how to derive a sign from a birthday.  
* A GET request to '/' should show 100 people objects in a table.
* ***frontend challenge***: Color each row differentially, according to zodiac sign.
