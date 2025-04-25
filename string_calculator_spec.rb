require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it 'returns 0 for empty string' do
      expect(StringCalculator.new.add('')).to eq(0)
    end  
        
    it "returns 1 for input string '1'" do
      expect(StringCalculator.new.add('1')).to eq(1)
    end            
  end  
end