class Person 
    attr_accessor :name, :age
    attr_reader :status

    def feliz!
        @status = "Sentindo-se Feliz!"
    end

    def triste!
        @status = "Sentindo-se Triste!"
    end

    def contente!
        @status = "Sentindo-se Contente!"
    end
end