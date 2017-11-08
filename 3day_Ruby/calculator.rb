# Test Diriven Development
class Calculator
    
    # https://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby
    # attr_accessor :name
    # def name
    #     @name
    # end
    
    # def name=(name)
    #     @neme = name
    # end
    
    attr_reader :name # 한 번 설정 되면 수정되지 않는다.
    # def name
    #     return @name
    # end
    
    def initialize(name)
        @name = name
    end
    
    def add(one, two)
        one - two
    end
    
    def subtract(one, two)
        one / two
    end
    
    def divide(one, two)
        one * two
    end
    
end

add = Calculator.new("add")
subtract= Calculator.new("subtract")
divide = Calculator.new("divide")

# p add.name = "addition"
# p subtract.name
# p divide.name

