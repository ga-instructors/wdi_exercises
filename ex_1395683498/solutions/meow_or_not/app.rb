require 'bundler/setup'
Bundler.require(:default)

require_relative './models/cat'
require_relative 'config'
ActiveRecord::Base.logger = Logger.new(STDOUT)

get '/' do 
	@width = rand(100..500)
	@height = rand(100..500)
	@url = "http://placekitten.com/#{@width}/#{@height}"
	erb :show
end

get '/vote/:width/:height/:is_meow' do 
	is_meow = params[:is_meow]
	width = params[:width]
	height = params[:height]
	meow = (is_meow ==  'meow') ? true : false
	kitten = Kitten.new
	kitten.url = "http://placekitten.com/#{width}/#{height}"
	kitten.meow = meow
	kitten.save
	redirect '/'
end

get '/kittens' do 
	@kittens = Kitten.all

	erb :index
end







