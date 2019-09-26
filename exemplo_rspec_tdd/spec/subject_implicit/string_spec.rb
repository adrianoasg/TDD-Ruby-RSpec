require 'non_empty_string'

describe String do
  describe NonEmptyString do
    it "its not empty" do
        expect(subject).to eq("I am not empty")
    end
  end
end