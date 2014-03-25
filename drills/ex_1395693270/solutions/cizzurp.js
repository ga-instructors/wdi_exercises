function BoyPopStar(name, haircut) {
	this.name = name; 
	this.haircut = haircut;
	this.moves = [];
	this.learnMoves = function(move) {
		this.moves.push(move);
		return this.moves;
	};
}

function cizzurp(n) {
	for (var i = 1; i < n+1; i++) {
		string = "";
		if (i % 3 === 0) {
			string += "cizz";
		}
		if (i % 5 === 0) {
			string += "urp";
		}
		if (string === "") {
			string += i;
		}
		console.log(string);
	}
}

BoyPopStar.prototype.cizzurp = cizzurp;