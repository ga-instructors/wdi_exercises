for i in (1..100) do 
	x = '' 
	x += 'fizz' if (i % 3 == 0)
	x += 'buzz' if (i % 5 == 0)
	puts (x.empty? ? i : x)
end