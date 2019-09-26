require 'calculator'

describe Calculator, "About Calculator" do
# describe 'Class Calculator' do

    subject(:calc) { described_class.new() }
    # subject(:calc) { Calculator.new() }

    context '#div' do
        it 'divide by 0' do
            # expect{calc.div(3, 0)}.to raise_exception
            expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError)
        end
    end

    context '#sum' do
        it 'with positive numbers' do
            result = calc.sum(5, 7) 
            expect(result).to eq(12)
            # expect(result).not_to eq(1)
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