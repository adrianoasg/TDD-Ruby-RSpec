$counter = 0 # variável global

describe "let!" do
    invocaion_order = []

    let!(:count) do
        invocaion_order << :let!
        $counter += 1
    end

    it "chama o método helper antes do teste" do
        invocaion_order << :example
        expect(invocaion_order).to eq([:let!, :example])
        expect(count).to eq(1)
    end
end
