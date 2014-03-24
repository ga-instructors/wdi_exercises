def string_manipulation(str)
	if !str.scan(/\$\^/).empty?
		start_pos = str.index("$^") + 2
		end_pos = str.index("^$") - 1
		target = str[start_pos..end_pos]
		str.sub!(target, target.upcase).sub!("$^", "").sub!("^$", "")
	end
	str.scan(/\$\^/).empty? ? (return str) : string_manipulation(str)
end