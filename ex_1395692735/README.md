#Person Lives In State Forms

###Overview:
* Allow Person to easily select their home state

###Spec:
 * Create a new rails project called comp_forms_app
	* Create a Person model
		* string name
      	* string address
      	* integer zip
	* Create a State model
		* string name
		* string abrv
		* string capital
	* There should be a one-to-many relationship between states and people.  
	* Set up an index page that includes a form for a new person and displays all the people
	* Bonus: Include a dropdown selection list for choosing the state (check out Rails' `collection_select`)
	* Bonus: Use ajax for this functionality
	* Use the provided `seeds.rb` to help

