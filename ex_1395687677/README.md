#Subway Manager

###Overview:
* Build a color coded subway display

###Spec:

###Part 1
* Create a rails app called `subway_manager`
* Use a postgresql database
* Create a model for subway_line
	* 'name' ~ string
	* 'color' ~ string	
* Seed your database using the below `seed.rb`.  You will need to pull in the 'httparty' gem.
* a get request to '/' should display a table of subway lines

* Set the background color of each row to the color of the station


#####seed.rb

```ruby 

SubwayLine.delete_all

SubwayLine.create(name:"1", color:"red")
SubwayLine.create(name:"2", color:"red")
SubwayLine.create(name:"3", color:"red")
SubwayLine.create(name:"4", color:"green")
SubwayLine.create(name:"5", color:"green")
SubwayLine.create(name:"6", color:"green")
SubwayLine.create(name:"6 Express", color:"green")
SubwayLine.create(name:"7", color:"purple")
SubwayLine.create(name:"7 Express", color:"purple")
SubwayLine.create(name:"A", color:"blue")
SubwayLine.create(name:"C", color:"blue")
SubwayLine.create(name:"E", color:"blue")
SubwayLine.create(name:"B", color:"orange")
SubwayLine.create(name:"D", color:"orange")
SubwayLine.create(name:"F", color:"orange")
SubwayLine.create(name:"M", color:"orange")
SubwayLine.create(name:"G", color:"lightgreen")
SubwayLine.create(name:"J", color:"brown")
SubwayLine.create(name:"Z", color:"brown")
SubwayLine.create(name:"L", color:"lightgrey")
SubwayLine.create(name:"S", color:"gray")
SubwayLine.create(name:"N", color:"yellow")
SubwayLine.create(name:"Q", color:"yellow")
SubwayLine.create(name:"R", color:"yellow")

```

****

###Part 2


* Create a model for station
	* 'address' ~ string
* Set up the many*to*many relationhship for stations and subway_lines
* Pull in data from the City of New York, using this updated seed.rb

#####seed.rb

```ruby 

SubwayLine.delete_all

SubwayLine.create(name:"1", color:"red")
SubwayLine.create(name:"2", color:"red")
SubwayLine.create(name:"3", color:"red")
SubwayLine.create(name:"4", color:"green")
SubwayLine.create(name:"5", color:"green")
SubwayLine.create(name:"6", color:"green")
SubwayLine.create(name:"6 Express", color:"green")
SubwayLine.create(name:"7", color:"purple")
SubwayLine.create(name:"7 Express", color:"purple")
SubwayLine.create(name:"A", color:"blue")
SubwayLine.create(name:"C", color:"blue")
SubwayLine.create(name:"E", color:"blue")
SubwayLine.create(name:"B", color:"orange")
SubwayLine.create(name:"D", color:"orange")
SubwayLine.create(name:"F", color:"orange")
SubwayLine.create(name:"M", color:"orange")
SubwayLine.create(name:"G", color:"lightgreen")
SubwayLine.create(name:"J", color:"brown")
SubwayLine.create(name:"Z", color:"brown")
SubwayLine.create(name:"L", color:"lightgrey")
SubwayLine.create(name:"S", color:"gray")
SubwayLine.create(name:"N", color:"yellow")
SubwayLine.create(name:"Q", color:"yellow")
SubwayLine.create(name:"R", color:"yellow")


response = HTTParty.get('https://data.cityofnewyork.us/api/views/he7q*3hwy/rows.json')

stations = response['data']

stations.each do |station_record|

	if station_record[10]

		new_station = Station.create(address: station_record[9])
		lines = station_record[10].split('*')

		lines.each do |line_name|

			if line = SubwayLine.find_by_name(line_name)
				line.stations << new_station
			end

		end
	end

end

```

***

###Part 3
* In `subway_lines/index.html.erb`, display the count of stations associated with each line. 
* In `subway_lines/show.html.erb`, display a given lines station addresses.

