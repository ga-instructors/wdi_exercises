def palindrome?(string)
	string.gsub!(" ", "")
	string == string.reverse
end

