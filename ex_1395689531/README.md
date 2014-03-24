#My Face

###Overview:

Lets create a website about ourselves and host it online!

###Spec:

####Part 1
* Navigate to `~/Documents/ga_wdi/projects`
* Create a folder called `my_face`
* **This is NOT in your work folder!**
* Within this folder, build a Sinatra applications:
	* use the filename `main.rb` for your controller
	* a `get` request to `/` should:
		* display your name
			* Example: 
				* `Neel Patel`
		* display a list of things you do
			* Example:
				* 'Play guitar', 'Code in Ruby', 'Snowboard'
		* display a picture of yourself			
		* clicking on this picture should: 
			* make a `get` request to '/contact'
		* display anything else you would like to add
	* a `get` request to '/contact' should
		* diplay your name
		* diplay your email address
		* diplay your twitter handle
	* ***Add some CSS!*** 
		

####Part 2
* Create a new `config.ru` file in your `my_face/` folder
	
#####config.ru:

require './main'

run Sinatra::Application

####Part 3
* Create a new `Gemfile` file in your `my_face/` folder

#####Gemfile:
```
source "https://rubygems.org"
ruby "2.0.0"
gem 'sinatra'
```
* Be sure ***NOT*** to add sinatra*reloader
* In your terminal do:
```
bundle install
```

####Part 4

Go to ```www.github.com``` and ```CREATE NEW REPOSITORY``` 

* Give it a name of my_face

In terminal do:

* git init
* git add -A
* git commit -m "my first commit"
* git remote add origin ```[GITHUB REPOSITORY URL]```
* Do git remote -v to ensure the remote has been added.  If it has, do the following:
	* git push origin master 
* Go back to your Github and ensure that the folder has been pushed up

####Part 5

In your terminal do:

* ```bundle exec rackup -p 4567```.  This will ensure you are ready for Heroku

####Part 6

In terminal do:

* heroku create 
* git remote -v
	* Ensure that a remote to heroku has been added 
* git push heroku master
* heroku ps
	* Confirm that the dyno is running and has not crashed

####Part 7

***SHARE YOUR APP!***

* Paste a link in Hipchat (not optional)
* Send it to your parents (optional)


