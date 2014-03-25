// Matt's Solution 

function findSubstring(string, sub) {
	var len = string.length
	for (var i = 0; i < len - 1; i++) {
		if (string.substring(i, i+sub.length) === sub) {
			return i;
		}
	}
	return false;
}

// Lior's Solution 

function find_substring(str, substr) {
var result = str.search(/[substr]/);
return (result == -1) ? false : result;
}