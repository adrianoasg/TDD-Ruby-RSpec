require 'calculator'

describe Calculator do
# describe 'Class Calculator' do

    subject(:calc) { described_class.new() }
    # subject(:calc) { Calculator.new() }

    context '#sum' do
        it 'with positive numbers' do
            result = calc.sum(5, 7) 
            expect(result).to eq(12)
        end

        it 'with negative and positive numbers' do
            result = calc.sum(-5, 7) 
            expect(result).to eq(2)
        end

        it 'with negative numbers' do
            result = calc.sum(-5, -7) 
            expect(result).to eq(-12)
        end
    end
end