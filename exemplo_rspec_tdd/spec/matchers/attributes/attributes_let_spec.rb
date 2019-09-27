require 'person'

describe 'Attributes' do

    # before(:each) do
    #     @person = Person.new()
    # end

    let(:person) { Person.new }

    it 'have_attributes' do
        person.name = "Jackson"
        person.age = 20

        expect(person).to have_attributes(name: "Jackson", age: 20)
    end

    it 'have_attributes 2' do
        person.name = "Jose"
        person.age = 25
        
        expect(person).to have_attributes(name: a_string_starting_with("J"), age: (a_value >= 20))
    end
end