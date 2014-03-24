#Postcards and Mailboxes

###Overview:
* A simulated mail experience!

###Spec:
* Postcard Object
	* Postcard should have a ship_to_address
	* Postcard should have a message	
	* Postcard should have a to_s method
		* Example: `The message 'Hello world!' is being sent to '41 Union Square W New York, NY 10003'"`
* Mailbox Object 
	* Mailbox should have an array of Postcard objects
	* Mailbox should have an accept_postcard method
		* accept_postcard should take a `postcard` and place that postcard in the Mailbox's array of postcards
	* Mailbox should have a to_s method that includes the number of postcards in the mailbox
		* Example: `The mailbox has 16 postcards`