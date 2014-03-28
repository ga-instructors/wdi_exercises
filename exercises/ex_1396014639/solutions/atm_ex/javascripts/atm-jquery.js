var atm = {
  Account: function(name, balance) {
    var self = this;
    self.balance = balance;
    self.name = name;

    // Elements
    self.balanceDisplay = $("#"+self.name + "_balance");
    self.depositButton = $("#"+self.name + "_deposit");
    self.withdrawButton = $("#"+self.name + "_withdraw");
    self.amount = $("#"+self.name + "_amount");

    // Add Event Listeners
    self.depositButton.on('click', function(event) {
        // console.log(event.target, "is the target")
        // console.log(this,"is this");
        // console.log(self, "is self");
        
        // Instance of Account is "self"
        self.deposit();
      });

    self.withdrawButton.on('click', function(event) {
      self.withdraw();
    });

    // Account Method Definitions
    self.deposit = function() {
      var amount = parseInt(self.amount.value);
      self.balance += amount;
      self.updateDisplay();
    }
    self.withdraw = function(){
      var amount = parseInt(self.amount.value);
      if (amount <= self.balance) {
        self.balance -= amount;
        self.updateDisplay();
      } else {
        alert("Insufficient Funds!");
      }      
    }
    self.updateDisplay = function() {
      if( self.balance <= 0 ) {
        self.balanceDisplay.classList.add("zero");
      } else {
        self.balanceDisplay.classList.remove("zero");
      }
      self.balanceDisplay.innerHTML = "$" + self.balance;
      //resets input
      self.amount.value = "";
    }
  }
}

window.onload = function() {
  atm.checkingAccount = new atm.Account('checking', 0);
  atm.savingsAccount = new atm.Account('savings', 0);
};