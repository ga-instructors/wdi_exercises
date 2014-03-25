require 'bundler/setup'
Bundler.require(:default)

class Person
	attr_accessor :name, :birthday, :sign
	

	def initialize 
		@name = Faker::Name.name
		@birthday = Time.at(rand * Time.now.to_i)
		@sign = @birthday.zodiac_sign
	end

end

peeps = 100.times.map{Person.new}

get '/' do 
	@peeps = peeps
	erb :index
end