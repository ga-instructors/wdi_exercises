Card.delete_all

["diams", "hearts", "clubs", "spades"].each do |suit|
	["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"].each do |value|
		if value.to_i == 0 
			if value == 'ace'
				num_value = 1
			else 
				num_value = 10
			end 
		else 
			num_value = value.to_i
		end

		Card.create({suit: suit, value: value, num_value: num_value})
	end
end