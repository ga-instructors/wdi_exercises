// Super Basic Solution
function perimeter(triangle){
	return triangle.sideA + triangle.sideB + triangle.sideC;
}

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 5
};

// Constructor function and prototype

function Triangle(a,b,c) {
	this.sideA = a; 
	this.sideB = b; 
	this.sideC = c;
}

Triangle.prototype.perimeter = function() {
	return this.sideA + this.sideB + this.sideC;
}