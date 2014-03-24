#The Arena

###Overview:
Use rails to create an application that will simulate a Roman Coliseum (minus the bloodshed).

MAXIMUS: "My name is Gladiator"

###Spec:
####Part(a)
* Create a rails app caled `the_arena`
* It should have a `gladiator` model with the following attributes:
	* Name - string
	* Weapon - string
	* Victory Count - integer 
* Create all the components so that a get request to `/` will show a table of gladiatiors
	* Seed your database using the Faker gem

####Part(b)
* We want to be able to add new gladiators to duel in our arena
* Write just the `create` and `update` features of a CRUD application
	* This should include all the relevant views and additional controller methods they may need
* ***Use Rails form helpers instead of HTML forms***
* ***Instead of creating two seperate forms, use a partial to dry your code***
