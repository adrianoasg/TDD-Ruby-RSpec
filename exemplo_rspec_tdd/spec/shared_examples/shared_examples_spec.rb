require 'person'

# describe 'Person' do
#     subject(:person) { Person.new }
     
#     it 'feliz' do
#         person.feliz!
#         expect(person.status).to eq('Sentindo-se Feliz!')
#     end

#     it 'triste' do
#         person.triste!
#         expect(person.status).to eq('Sentindo-se Triste!')
#     end

#     it 'contente' do
#         person.contente!
#         expect(person.status).to eq('Sentindo-se Contente!')
#     end
# end

# Shared example

shared_examples 'status' do |feeling| 
    it "#{feeling}" do
        person.send("#{feeling}!")
        expect(person.status).to eq("Sentindo-se #{feeling.capitalize}!")
    end
end

describe 'Person' do
    subject(:person) { Person.new }
    
    it_behaves_like 'status', :feliz
    it_behaves_like 'status', :triste
    it_behaves_like 'status', :contente
end