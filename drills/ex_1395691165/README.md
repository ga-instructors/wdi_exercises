#Rails + Flickholdr

###Overview:
* Feeling beholden to placekitten.com but don't like being beholden to anyone?  Concerned about exposure to toxoplasmosis?  So are we.  Let's build a Rails app that renders a pictures of a given length, height, AND subject matter.  

###Spec:

* Familiarze yourself with [www.flickholdr.com](http://www.flickholdr.com)
* Create a RAILS application called `flickholdr` using a postrgres database.  Also, skip Test unit.  
* A GET request to '/' should call a `spec_image` action inside of your Flickrholder controller.  I'll throw you a bone:

```

get '/' => 'flickholdr#spec_image'

```
* The `spec_image` action should render a form with the following fields:
	- width 
	- height 
	- tag

* A POST request to '/' should call a `show_image` action inside of your Flickholdr controller.  It should then render an image from www.flickholdr.com from the specified parameters. 