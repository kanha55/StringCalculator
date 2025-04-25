require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it 'returns 0 for empty string' do
      expect(StringCalculator.new.add('')).to eq(0)
    end  
        
    it "returns 1 for input string '1'" do
      expect(StringCalculator.new.add('1')).to eq(1)
    end 
    
    it "returns n for input string 'n' where n is any positive number" do
      expect(StringCalculator.new.add('98888888888')).to eq(98888888888)
    end 

    it "returns 6 for input string '1,5'" do
      expect(StringCalculator.new.add('1,5')).to eq(6)
    end 

    it "returns sum of two numbers for input string  of comma separated two numbers" do
      expect(StringCalculator.new.add('9999,1')).to eq(10000)
    end 

    it "returns sum of three numbers for input string  of comma separated three numbers" do
      expect(StringCalculator.new.add('9999,99,1')).to eq(10099)
    end 

    it "returns sum of N numbers for input string  of comma separated N numbers" do # N is any positive number
      expect(StringCalculator.new.add('1,2,3,4,5,6,7,8,9')).to eq(45)
    end 
  end  
end