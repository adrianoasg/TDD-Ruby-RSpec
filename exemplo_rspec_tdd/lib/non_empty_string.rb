class NonEmptyString < String
    def initialize
        self << "I am not empty"
    end
end