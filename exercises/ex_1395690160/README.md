#Three One One

###Overview:
Use an external data source (API) to seed your database, then display that data in a meaningful and interactive way.

###Spec:

####Part(a)
* Look at `http://data.cityofnewyork.us`

---

####Part(b)
* Create a rails app called `three_one_one`
* Use a postgresql database
* Create a model for `complaint`
	* 'descriptor' ~ string	
	* 'address' ~ string	
	* 'latitude' ~ decimal
	* 'longitude' ~ decimal	
	* 'zip' ~ integer
* Create all the components necessary for:
	* a get request to '/' should display a table of complaint data

---

####Part(c)
* Write a seed file that fills the database with actual 311 complaints
* `http://data.cityofnewyork.us/resource/erm2-nwe9.json`
* Extra:
	* AFTER that is done, try to make it so the data can be sorted by the different columns
	* For example sort by zip code if you click on "Zip Code"

######User Stories:
* As a user I want to see all 311 call reports so I can know what's going on in my NYC
* As a user I want to be able to sort those reports by zip code, latitude, or longitude

___

####Part(d)
* [Winner of 311 hackathon on 1/17](http://nycopendata.tumblr.com/post/73632538025/reinvent311-mobile-content-challenge)
	* [Link to app in iTunes](https://itunes.apple.com/us/app/nyc-cares/id792710482?mt=8)
	
___


