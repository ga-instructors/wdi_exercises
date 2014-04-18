require_relative '../calculator'

describe Calculator do
  before(:each) do
    @calculator = Calculator.new
  end

  describe ".add" do
    it "adds two numbers" do
      @calculator.add(1,2).should eq 3
    end
  end

  describe ".substract" do
    it "substracts two numbers" do
      @calculator.subtract(43,1).should eq 42
    end
  end

  describe ".multiply" do
    it "multiplies two numbers" do
      @calculator.multiply(13,13).should eq 169
    end
  end

  describe ".divide" do
    it "divides two numbers" do
      @calculator.divide(8,5).should eq 1.6
    end
  end
end