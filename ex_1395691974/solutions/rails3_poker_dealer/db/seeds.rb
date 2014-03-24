Card.delete_all

["diams", "hearts", "clubs", "spades"].each do |suit|
	["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"].each do |value|
		if value.to_i == 0 
			case value 
				when 'jack' then num_value = 11
				when 'queen' then num_value = 12
				when 'king' then num_value = 13
				when 'ace' then num_value = 14
			end
		else 
			num_value = value.to_i
		end
		Card.create({suit: suit, value: value, num_value: num_value})
	end
end