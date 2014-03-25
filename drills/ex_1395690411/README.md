#My Face (Github + Heroku)

###Overview:
* Create and push to a Github repository
* Deploy code to Heroku.

###Spec:

####Part 1
* Create a new `config.ru` file in your `my_face/` folder
	
#####config.ru:

```ruby 

require './main' #assuming you  wrote your app inside of main.rb

run Sinatra::Application

```

####Part 2
* Create a new `Gemfile` file in your `my_face/` folder

#####Gemfile:
```
source "https://rubygems.org"
ruby "2.0.0"
gem 'sinatra'
```
* Be sure ***NOT*** to add sinatra-reloader
* In your terminal do:
```
bundle install
```

####Part 3

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

####My Face (e)

In your terminal do:

* ```bundle exec rackup -p 4567```.  This will ensure you are ready for Heroku

####My Face (f)

In terminal do:

* heroku create 
* git remote -v
	* Ensure that a remote to heroku has been added 
* git push heroku master
* heroku ps
	* Confirm that the dyno is running and has not crashed

####My Face (g)

***SHARE YOUR APP!***

* paste a link in Hipchat (not optional)
* Send it to your parents (optional)