#Sinatra's Stopwatch

###Overview:
- Building a stopwatch application

###Spec:
- Write a Sinatra application
- A `get` request to '/' should display "Stopwatch has started..."
- A `get` request to '/stop' should display the difference between
	- the current time and the time the stopwatch was started

#####Hints
- On the `get` request to '/' save the current time to `sessions`
- On the `get` request to '/stop' calcualte the difference and display that
- You can get the current time using: `Time.now`

