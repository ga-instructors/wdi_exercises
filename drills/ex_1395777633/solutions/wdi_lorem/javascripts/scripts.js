function shuffle(array) {
  var currentIndex = array.length
    , temporaryValue
    , randomIndex
    ;

  // While there remain elements to shuffle...
  while (0 !== currentIndex) {

    // Pick a remaining element...
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;

    // And swap it with the current element.
    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }

  return array;
}


var LoremIpsumGen = function(wordlist) {
	var self = this;
  self.wordlist = ["Yaniv Savir", "Matthew Plummer", "Isaac Woodruff", "Brendan Soffientini", "Michael Deal", "Julie Kraft", "Eric Streske", "Jonathan Trope", "Daniel Bushkanets", "Nate Hindman", "Ethan Schmertzler", "Matthew Jacobs", "John Gordon", "Wright Rickman", "Evan Besser", "Brittany Wald", "Meghann Plunkett", "Omar Delarosa", "Neel Patel", "code", "GA", "WDI", "Studio 3", "ruby", "javascript", "postgres", "API", "When we get to Rails", "nec", "non", "sum", "oli", "sit", "per", "hum", "varchar the viking", "sexy sexy", "screen down music", "project week", "Little Insects", "onesie bathroom", "Faker gem", "karaoke", "The Factory", "Turger", "Lydia", "Rat Chaos", "Rat King", ]
;

  this.createSentence = function(num){
    var lorem_array = []
  	shuffle(self.wordlist)
    for (i=0; i<num; i++){
      lorem_array.push((self.wordlist[i]+"um"))
    }
    return lorem_array.join(" ");
  };
}

var LoremView = function() {
  var self = this;
  self.model = new LoremIpsumGen();
  self.model.view = self;

  this.addEventListeners = function(){
    var $button = $('#button');
    var $lorem_text = $('#lorem_text');
    $button.click(function() {
      var $num = $('#length_box').val();
      $lorem_text.empty();
      var new_sent = self.model.createSentence($num);
      $lorem_text.html(new_sent);
      $lorem_text.removeClass("hidden");

      $('#length_box').val('')
    })
  }

  this.addEventListeners();

}

$(function(){

  new LoremView();

})



