require 'spec_helper'

describe Palindrome do

	# describe "#palindrome?" do 
	# 	it "should return true if Palindrome is actually a palindrome" do
	# 		maddam = Palindrome.create(text: "maddam")
	# 		# maddam.palindrome?.should eq(true)
	# 		expect(maddam.palindrome?).to eq(true)
	# 	end

	# 	it "should return false if Palindrome is not a palindrome" do
	# 		hello = Palindrome.create(text: "hello")
	# 		expect(hello.palindrome?).to eq(false)
	# 	end
	
	# end


	describe "create" do 
		
		it "should throw an error if palindrome is less than 2 letters" do 
			one_letter_palindrome = Palindrome.create(text: "q")
			one_letter_palindrome.should have(1).error_on(:text)
		end

		it "should throw an error if attempt to make palindrome that is not palindrome" do 

			not_palindrome = Palindrome.create(text: "asdfkljfd")
			not_palindrome.errors[:base].should include 'This is not a palindrome.'

		end

	end


end
