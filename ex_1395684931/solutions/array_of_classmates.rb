require 'pry'

class_proc = ["Zack Dinerstein", "Patrick Morgan", "Lior Elrom", "Daniel Lopez", "Lena Niznik", "Mike Muse", "Sarah Adler", "Chuck Rea", "Isaac Torres", "Rich Grundy", "Dylan Yep", "Brad Wertman", "Sanjay Harvey", "Ann Kim", "Justin Shaffer", "Colleen Joyce", "Serge Thompson", "Scott Fell", "Mike Tener", "Rich Sung", "Sam Nebel"]

class Developer 
	def initialize(first, last, fav_lang)
		@first = first 
		@last = last 
		@fav_lang = fav_lang
	end
end

def firstname(name)
	name.split[0]
end

def lastname(name)
	name.split[1]
end

def fav_lang
	fav_lang_arr = ["ruby", "c++", "javascript", "scala", "fortran"]
	fav_lang_arr.sample
end



dev_arr = Array.new

class_proc.each do |name|
	dev_arr << Developer.new(firstname(name), lastname(name), fav_lang)
end



binding.pry


