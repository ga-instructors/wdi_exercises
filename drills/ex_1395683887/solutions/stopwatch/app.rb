require 'sinatra'
require 'sinatra/reloader'
require 'pry'

enable :sessions

get '/' do 
	session[:time] = Time.now
	erb :start
end

get '/stop' do 
	@time_difference = Time.now - session[:time]
	erb :stop
end