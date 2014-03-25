# Brad's Solution

def find_substring(main_string, substring)
  if main_string.include?(substring)
    main_string.split("").to_a.index(substring)
  else
    return false
  end
end

# Muse's solution 

def find_substring(string, matcher)
  if string.include? matcher
    string.gsub!(matcher, "|")
    i = 0
    string.each_char do |let|
      if let == "|"
        puts i
      else
        i += 1
      end
    end
  else
    return false
  end
end

# Sarah's Solution

def find_substring(string, substring)
	if s = string.match(substring)
		return s.begin(0)
	end
	return false
end

# Lior 

def find_substring(str, substr)
	str =~ (/#{substr}/) || false
end






