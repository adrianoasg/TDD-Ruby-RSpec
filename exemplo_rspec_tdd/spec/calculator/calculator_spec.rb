require 'calculator'

describe Calculator do
    it 'sum two numbers' do
        calc = Calculator.new
        result = calc.sum(5, 7) 
        expect(result).to eq(12)
    end

    specify 'sum 2 numbers with one negative numbers' do
        calc = Calculator.new
        result = calc.sum(-5, 7) 
        expect(result).to eq(2)
    end
    
end