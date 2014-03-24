#Classy ATM

###Overview:
* Create ATM objects and Client objects.  Allow for transactions.

###Spec:
* Client Object
	* Client should have a name
	* Client should have a $ balance
	* Client should have a to_s method
* ATM Object 
	* ATM should have a $ balance
	* ATM should have a method `exchange_money` 
		* `exchange_money` should accept a client object
		* `exchange_money` should accept an amount (positive or negative)
		* `exchange_money` should perform the exchange between clients account and atm balance
		* ATM should have a to_s method