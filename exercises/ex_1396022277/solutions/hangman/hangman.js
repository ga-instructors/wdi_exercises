function SecretWord(word) {
  this.word = word;
  this.guessedLetters = [];
};

SecretWord.prototype = {
  toA: function toA(){
    return this.word.split("");
  },
  guess: function guess(letter){
    if (this.guessedLetters.indexOf(letter) >= 0) {
      return "already guessed";
    }
    this.guessedLetters.push(letter)

    if(this.word.indexOf(letter) < 0) {
      return "wrong";
    }
    if (this.checkCompletion()){
      return "complete";
    };
    return "right";
  },
  correctLetters: function correctLetters(){
    var correct = [];
    var self = this;
    this.guessedLetters.forEach(function pushCorrectLetter(letter){
      if (self.word.indexOf(letter) >= 0) {
        correct.push(letter);
      }
    })
    return correct;
  },
  wrongLetters: function wrongLetters(){
    var self = this;
    var wrong = [];
    this.guessedLetters.forEach(function(letter){
      if (self.word.indexOf(letter) < 0) {
        wrong.push(letter);
      }
    })
    return wrong;
  },
  checkCompletion: function checkCompletion(){
    var self = this;
    var result = true;
    this.toA().forEach(function(letter){
      if (self.correctLetters().indexOf(letter) < 0) {
        result = false;
      }
    });
    return result;
  },
  toS: function toS(){
    var self = this;
    return_string_arr = this.toA().map(function(letter) {
      if (self.guessedLetters.indexOf(letter) === -1) {
        return '_'
      } else {
        return letter;
      }
    });
    return return_string_arr.join(" ");
  }
}


function Game() {
  this.oldWords = [];
  this.words = [
    'ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra',
    'model','controller','view','devise','authentication','capybara',
    'jasmine', 'cache','sublime','terminal','system','twitter','facebook',
    'function','google','amazon','development','data','design','inheritance',
    'prototype','gist','github','agile','fizzbuzz','route','gem','deployment',
    'database'
  ];
  this.nextWord();
}
Game.failureLimit = 7;

Game.prototype = {
  nextWord: function nextWord() {
    if (this.word) {
      this.oldWords.push(this.word)
    }
    this.word = new SecretWord(this.words.pop());
  },
  guess: function guess(guess) {
    if (this.checkForLoss()) {
      return "already lost"
    }
    if (this.checkForWin()) {
      return "already won"
    }
    return this.word.guess(guess);
  },
  failureCount: function failureCount(){
    return this.word.guessedLetters.length - this.word.correctLetters().length
  },
  checkForLoss: function checkForLoss(){
    return this.failureCount() >= Game.failureLimit
  },
  checkForWin: function checkForWin(){
    return this.word.checkCompletion();
  },
  displayStatus: function displayStatus(){
    console.log(this.word.toS())
    console.log("Wrong guesses: "+this.word.wrongLetters());
  }
}

function GameView(){
  this.game = new Game();
  this.elements = {
    guessesLeft: document.getElementById("guesses_left"),
    guessedLetters: document.getElementById("guessed_letters"),
    letterField: document.getElementById("letter_field"),
    wordString: document.getElementById("word_string"),
    giveUpButton: document.getElementById("give_up_button"),
    resetButton: document.getElementById("reset_button")
  };
  this.setHandlers();
  this.render();
}

GameView.prototype = {
  setHandlers: function setHandlers(){
    var self = this;
    this.elements.resetButton.addEventListener('click', function(e) {
      self.game.nextWord();
      self.render();
    });
    this.elements.letterField.addEventListener('keyup', function(e) {
      var letter = this.value;
      this.value = '';
      self.handleGuess(letter);
    });
    this.elements.giveUpButton.addEventListener('click', function(e) {
      self.lose();
    });
  },

  handleGuess: function handleGuess(letter){
    var result = this.game.guess(letter);
    this.render();
    if (result == "wrong") {
      if (this.game.checkForLoss()) {
        this.lose();
      }
    }
    if (result == "complete") {
      this.win()
    }
  },

  lose: function lose(){
    var self = this;
    self.render();
    self.lostStyle();
    setTimeout(function() {
      self.game.nextWord();
      self.render();
    }, 5000);
  },
  win: function win(){
    var self = this;
    self.render();
    setTimeout(function() {
      self.game.nextWord();
      self.render();
    }, 2000);
  },

  lostStyle: function lostStyle(){
    this.elements.wordString.innerHTML = this.game.word.word;
    this.elements.wordString.className = "lost";
  },

  render: function render(){
    this.elements.guessesLeft.innerHTML = Game.failureLimit - this.game.failureCount();
    this.elements.guessedLetters.innerHTML = this.game.word.guessedLetters.join(" ");
    this.elements.wordString.innerHTML = this.game.word.toS();
    this.elements.wordString.className = "";
    if (this.game.checkForLoss()) {
      this.lostStyle();
    }
    if (this.game.checkForWin()) {
      this.elements.wordString.className = "complete";
    }
  }
}

window.onload = function() {
  new GameView();
}
