$counter = 0 # variável global

describe "let" do
    let(:count) { $counter += 1 }

    it "memoriza o valor" do
        expect(count).to eq(1) # 1a vez
        expect(count).to eq(1) # 2a Cache
    end

    it "não é cacheado entre os testes" do
        expect(count).to eq(2)  
    end
end
