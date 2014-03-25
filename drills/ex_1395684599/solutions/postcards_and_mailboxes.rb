require 'pry'

class Postcard 
	def initialize(ship_to_address, message)
		@ship_to_address = ship_to_address
		@message = message
	end

	def to_s 
		"A postcard with the folling message is being sent to #{@ship_to_address}: #{@message} "
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