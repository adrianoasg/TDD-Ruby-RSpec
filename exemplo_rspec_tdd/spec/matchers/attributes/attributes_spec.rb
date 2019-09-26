require 'person'

describe 'Attributes' do
    it 'have_attributes' do
        person = Person.new()
        person.name = "Jackson"
        person.age = 20
        expect(person).to have_attributes(name: "Jackson", age: 20)
    end

    it 'have_attributes 2' do
        person = Person.new()
        person.name = "Jackson"
        person.age = 20
        expect(person).to have_attributes(name: starting_with("J"), age: (be >= 20))
    end
end