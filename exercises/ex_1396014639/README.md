#ATM

###Learning Objective: 
...write reusable code with a method that accepts none, one, or many arguments, performs an operation, and returns an expected data type

###Overview
Use Javascript to create an ATM simulator that manipulates the DOM to show account values.

###Spec:
* Keep track of checking and savings balances
	* As a user, I want to deposit money into one of my accounts
		* Make sure you are updating the display and manipulating the HTML of the page so a user can see the change.
	* As a user, I want to withdraw money from one of my accounts
		* Make sure you are updating the display and manipulating the HTML of the page so a user can see the change.
		* Make sure the balance in an account can't go negative. 
			* If a user tries to
withdraw more money than exists in the account, ignore the transaction.
		* When the balance of the bank account is $0 the background of that bank account
should be red.
		* It should be gray when there is money in the account.
* What happens when the user wants to withdraw more money from the checking
account than is in the account?
	* These accounts have overdraft protection, so if
a withdrawal can be covered by the balances in both accounts, take the checking
balance down to $0 and take the rest of the withdrawal from the savings account. If the withdrawal amount is more than the combined account balance, ignore the transaction.

* ***BONUS:***
	* Read about Javascript's built in `alert` function.
	* When an account tries to go negative, in addition to ignoring the transaction, use the `alert` function to notify the user that they do not have enough money in their account.  