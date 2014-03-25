class Palindrome < ActiveRecord::Base
  validate :palindrome?
  validates :text, length: {minimum: 2}
  # `validates_presence_of :text
  

  attr_accessible :text


  # def palindrome?
  # 	self.text == self.text.reverse
  # end


 def palindrome? 
 	unless self.text == self.text.reverse
 		errors.add(:base, :not_a_palindrome)
 	end
 end

end
