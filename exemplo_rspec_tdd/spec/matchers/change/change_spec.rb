require 'counter'

describe 'Macher change' do
    it { expect{Counter.increment}.to change { Counter.qtd } } # qtd = 1
    it { expect{Counter.increment}.to change { Counter.qtd }.by(1) } # qtd = 2
    it { expect{Counter.increment}.to change { Counter.qtd }.from(2).to(3) } # qtd = 3
end