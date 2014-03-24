require 'faker'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

class Person 
	attr_reader :name, :age, :company, :email
	def initialize 
		@name = Faker::Name.name
		@age = rand(18..100)
		@company = Faker::Company.name
		@email = Faker::Internet.email
	end

	def to_s 
		"I'm #{@name}, a #{@age} year old employee 0f #{@company}.  My email is #{@email}"
	end
end

persons = []

50.times do 
	persons.push(Person.new)
end
# 50.times { persons << Person.new }

persons.each do |person|
	puts person
end

get '/' do 
	@persons = persons
	erb :persons
end

