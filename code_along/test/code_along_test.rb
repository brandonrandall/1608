require './lib/code_along'
require 'minitest/autorun'
require 'minitest/pride'


class CalculatorTest < Minitest::Test

  def test_calc_should_have_total
    calculator = Calculator.new
    assert calculator.total
  end

  def test_total_should_default_to_zero
    calculator = Calculator.new
    assert_equal 0, calculator.total
  end

  def test_it_adds_numbers_to_total
    calculator = Calculator.new
    assert_equal 0, calculator.total
    calculator.add(5)
    assert_equal 5, calculator.total
  end

  def test_it_should_clear
    calculator = Calculator.new
    calculator.add(5)
    calculator.add(7)
    calculator.add(2)

    assert_equal 14, calculator.total
    calculator.clear
    assert_equal 0, calculator.total
  end

  def test_it_should_subtract
    calculator = Calculator.new
    assert_equal 0, calculator.total
    calculator.subtract(2)
    assert_equal -2, calculator.total

  end
end


# want my class to have a total
# total to default to 0
# should add numbers
# should clear, this would be a kind of reset back to 0
# should subtract
