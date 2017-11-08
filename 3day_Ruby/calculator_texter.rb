# unit testing

require 'test/unit' # 테스트를 하기 위한 코드
require_relative 'calculator' # 상대 경로

class CalculatorTest < Test::Unit::TestCase
    def setup
        
    end
    
    def test_calculator
        @calc = Calculator.new("test")
        
        # http://ruby-doc.org/stdlib-2.1.0/libdoc/test/unit/rdoc/Test/Unit/Assertions.html
        # assert_equal ('기대 값', '실제 값')
        assert_equal(7, @calc.add(2, 5))
        assert_equal(3, @calc.subtract(5, 2))
        assert_equal(2, @calc.divide(10, 5))
    end
    
end