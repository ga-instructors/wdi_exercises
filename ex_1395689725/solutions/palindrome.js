//Scooter's Solution

var isPalindrome = function(inString) {
	var inString = inString.toLowerCase();
			//(var i = 0; i < string.length/2; i++)
	for (var i = 0, j = inString.length-1; i < inString.length/2; i++, j--) {
		//if (string[i] !== string[string.length-(i+1)] )
		if (inString[i] != inString[j]){
			return false;
		}
	}
	return true;
}

//Chucks Solution

String.prototype.isPalindrome = function isPalindrome() {
	console.log(this);
	var new_str = this.toString().replace(" ", "");
	if (new_str == new_str.split("").reverse().join("")) {
		return true;
	} else {
		return false;
	}
}