class UI
  def initialize(args)
    @calculator = args[:calculator]
  end

  def perform_calculation
    print "x: "
    x = gets.chomp.to_i
    print "operator (add, mulitply, subtract, divide)"
    operator = gets.chomp
    print "y: "
    y = gets.chomp.to_i
    puts evaluate(x, y, operator)
  end

  def evaluate(x, y, operator)
    case operator
    when "add"
      calculator.add(x,y)
    when "subtract"
      calculator.subtract(x,y)
    when "multiply"
      calculator.multiply(x,y)
    when "divide"
      calculator.divide(x,y)
    end
  end

  def run
    perform_calculation while run_again?
  end

  def run_again?
    puts "Do you want to use the calculator?"
    result = gets.chomp.downcase
    result[0] == "y"
  end

  private

  attr_reader :calculator
end