class Grandma
  def initialize
    @deaf = true
  end

  def listen(input="")
    if input.chomp == input.upcase
       puts "NO, NOT SINCE 1929!"
    else
       puts "WHAT's THAT? COME AGAIN, SONNY!"
    end
  end

  def loud_enough?(input)
    all_letters_arr = input.split('')
    uppercase_letters_arr = all_letters_arr.select{|char| char == char.upcase }
    (uppercase_letters_arr.length.to_f / all_letters_arr.length.to_f) > 0.5
  end
end



