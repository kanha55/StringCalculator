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
  end  
end