require 'bundler/setup'
Bundler.require(:default)


get '/' do 
	erb :me
end

get '/contact' do 
	erb :contact
end