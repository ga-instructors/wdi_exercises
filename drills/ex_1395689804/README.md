#My Face

###Overview:
* Make a personal website, featuring a picture of your face in addition to a your favorite things.

###Spec:
* Create a folder called `my_face` in a directory that is not currently under version control.
* Within this folder, build a Sinatra applications:
	* a `GET` request to `/` should:
		* display your name
		* display a list of five things you do.  (e.g. 'play guitar', 'eat spirulina', 'bake kale chips', 'drink young coconuts', 'code in ruby')
		* display a picture of yourself			
		* clicking on this picture should: 
			* make a `GET` request to `/contact`
	* a `GET` request to `/contact` should
		* diplay your name
		* diplay your email address
		* diplay your twitter handle
	* ***Add some CSS! Consider using the Skeleton framework!*** 

