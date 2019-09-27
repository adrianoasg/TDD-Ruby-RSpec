# require 'person'

# describe 'Attributes' do
#     it 'have_attributes' do
#         person = Person.new()
#         person.name = "Jackson"
#         person.age = 20
#         expect(person).to have_attributes(name: "Jackson", age: 20)
#     end

#     it 'have_attributes 2' do
#         person = Person.new()
#         person.name = "Jackson"
#         person.age = 20
#         expect(person).to have_attributes(name: starting_with("J"), age: (be >= 20))
#     end
# end

require 'person'

describe 'Attributes' do
    
    before(:suite) do
        puts ">>>>>>>>>> ANTES DE TODA a suíte de testes"
    end

    after(:suite) do
    puts ">>>>>>>>>> DEPOIS DE TODOS a suíte de testes"
    end

    before(:context) do
    puts ">>>>>>>>>> ANTES DE TODOS os testes"
    end

    after(:all) do
    puts ">>>>>>>>>> DEPOIS DE TODOS os testes"
    end

    # before(:each) do
    #     puts "ANTES >>>>>>>"
    #     @person = Person.new()
    # end

    # after(:each) do
    #     @person.name = "Sem nome!"
    #     puts "DEPOIS >>>>>>>>> #{@person.inspect}"
    # end

    around(:each) do |teste|
        puts "ANTES >>>>>>>"
        @person = Person.new()

        teste.run # roda o teste

        @person.name = "Sem nome!"
        puts "DEPOIS >>>>>>>>> #{@person.inspect}"
    end

    it 'have_attributes' do
        # person = Person.new()
        @person.name = "Jackson"
        @person.age = 20
        expect(@person).to have_attributes(name: "Jackson", age: 20)
    end

    it 'have_attributes 2' do
        @person = Person.new()
        @person.name = "Jackson"
        @person.age = 20
        expect(@person).to have_attributes(name: starting_with("J"), age: (be >= 20))
    end
end