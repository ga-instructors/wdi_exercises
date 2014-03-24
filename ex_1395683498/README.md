#Meow Or Not

###Overview:
* Practice with Sinatra app (Kinder... get it?)

###Spec 1 
* create a database `wdi_morning`
* set up a connection to your database inside your application 
* write and run a migration to create a `kittens` table.  it should have columns for: 
	* url (string)
	* meow (boolean)

####Spec 2 
* A GET request to '/' should should a random kitten.   
* A User should be able to vote as to whether or not a kitten is 'meow'.
* Your solution may involve a GET request to '/vote/:x/:y/:is_meow'
* The kitten's url string and meow boolean must be stored in the database

	