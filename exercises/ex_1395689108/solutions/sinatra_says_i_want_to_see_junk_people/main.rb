require 'sinatra'
require 'sinatra/reloader'
require 'faker'
require 'pry'

users = {} 

class User
	attr_reader :first_name, :last_name, :email

	def initialize
		@first_name = Faker::Name.first_name
		@last_name = Faker::Name.last_name
		@email = Faker::Internet.email("#{@first_name}.#{@last_name}")
	end

end

(1..1000).each do |id|
	users[id] = User.new
end

get '/:id1/:id2' do
	id1 = params[:id1].to_i
	id2 = params[:id2].to_i
	binding.pry
	users_array = []
	(id1..id2).each do |id|
		users_array << users[id]
		binding.pry
	end
	@users_array = users_array
	binding.pry
	erb :display
end







