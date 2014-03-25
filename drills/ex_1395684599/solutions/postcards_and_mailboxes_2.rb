require 'pry'
require 'faker'

class Junkmail 
	def initialize(dummy= "dummy")
		@name = Faker::Name.name
		@street = Faker::Address.street_address
		@city = Faker::Address.city
		@state = Faker::Address.state
		@zip_code = Faker::Address.zip_code

		@company = Faker::Company.name
		@bs = Faker::Company.bs
	end

	def to_s 
		"At #{@company}, we #{@bs}.
		Please buy from us many goods and services."
	end
end

class Mailbox 
	def initialize
		@mail = []
	end

	def accept_postcard(postcard)
		@mail << postcard
	end

	def to_s 
		"The mailbox has #{@mail.count} postcards"
	end

end

binding.pry