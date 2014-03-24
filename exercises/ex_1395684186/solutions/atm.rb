require 'pry'

class Client 
	attr_accessor :balance

	def initialize(name, balance)
		@name = name
		@balance = balance
	end

	def to_s
		return "name: #{@name}, balance: #{@balance}"
	end
end

class Atm 
	def initialize(balance)
		@balance = balance
	end

	def to_s 
		"ATM balance: #{@balance}"
	end

	def exchange_money(client, amount)
		# if amount > client.balance 
		# 	puts "insufficient funds"
		# elsif amount > @balance
		# 	puts "this ATM cannot process the request"
		# else 
		# 	@balance -= amount 
		# 	client.balance += amount
		# 	puts "Your new balance is #{client.balance}"
		# end
		if amount < @balance * -1
			puts "Insufficient funds for transaction"
		else 
			client.balance -= amount
			@balance += amount
			puts "Your new balance is #{client.balance}"
		end
	end

end


binding.pry