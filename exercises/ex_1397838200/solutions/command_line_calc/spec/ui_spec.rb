require_relative '../ui'
require_relative '../calculator'

describe UI do

  before(:each) do
    $stdin = StringIO.new
    $stdout = StringIO.new
    calculator = Calculator.new
    @ui = UI.new(calculator: calculator)
  end

  it "accepts user input" do    $stdin.string = "1\nadd\n3\n"
    @ui.perform_calculation
    $stdout.string.should include "4"
  end

  it "adds two numbers" do
    @ui.evaluate(2, 2, "add").should eq 4
  end

  it "substracts two numbers" do
    @ui.evaluate(45, 3, "subtract").should eq 42
  end

  it "multiples two numbers" do
    @ui.evaluate(13,13, "multiply").should eq 169
  end

  it "divides two numbers" do
    @ui.evaluate(8,5, "divide").should eq 8/5.to_f
  end

end