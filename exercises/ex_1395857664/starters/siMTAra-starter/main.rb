# We are using bundler!
require 'bundler/setup'
Bundler.require(:default)


# Right now... these classes are NOT being used!!!!
# Bonus:  Use objects!
# require_relative 'classes/line.rb'
# require_relative 'classes/station.rb'


# Get all the mta data!
require_relative 'get_mta_data.rb'


# Show all the train lines!
get '/' do
	@mta_data = MTA::LINES
	# ...
end

# Show all the stations for a single line!
get '/line/:line_name' do
	# ...
end
