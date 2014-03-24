require 'bundler/setup'
Bundler.require(:default)

class Person 
	attr_reader :first_name, :last_name, :email

	def initialize
		@first_name = Faker::Name.first_name
		@last_name = Faker::Name.last_name
		@email = Faker::Internet.email("#{@first_name} #{@last_name}")
	end
end

people = 1000.times.map { Person.new }

# people = []
# 1000.times do 
# 	people << Person.new
# end 

get '/' do 
	@people = people

	erb :index
end
