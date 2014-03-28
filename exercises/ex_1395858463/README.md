#Sinatra wants Stock Quotes

###Learning Objective: 
...create dynamic templates by embeding ruby code in HTML with the use of ERB templating

###Overview:
Use Sinatra and a Yahoo Finance gem to display stock information.

###Spec:
* Build a Sinatra App that will take a stock symbol and return the daily high of the stock
* The stock symbol should be inputted via a form
* The result should be rendered in the browswer with ERB.
* Remeber to use the line of code discussed in class.  It is in the starter code as well as given below:

```@quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].dayHigh```

###RENDER YOUR RESPONSE WITH ERB


