#Palindromes

###Overview:
* Build a palindrome detector in ruby and javascript

###Spec:

###Part 1 
* Write a method in Ruby that takes a string as an argument and returns true or false based on whether or not that string is a palindrome: 

```ruby 

def palindrome?(string)
	#some logic
end

```

###Part 2
* Write a method in JavaScript that takes a string as an argument and returns true or false based on whehter or not that string is a palindrome: 

```javascript 

function isPalindrome(string) {
	// some logic
}

```

**hint:** You may want to take a look at JavaScript's `substring` function.  However, it is not necessary to solve the problem.


***challenge:***

* Extend the `String` object's prototype to include an `isPalindrome` method.  We should be able to call it on a string, without passing it any arguments.

```javascript 
	
"maddam".isPalindrome() //should return true

```
