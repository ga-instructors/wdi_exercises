require 'sinatra'

get '/' do 
 erb :me
end

get '/contact' do 
 erb :contact
end

