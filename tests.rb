require_relative "string_calculator"
require 'test/unit'
 
class TestStringCalculator < Test::Unit::TestCase
	def test_zero_arguments
		assert_equal 0, StringCalculator.add("")
	end
	def test_one_arguments
		assert_equal 1, StringCalculator.add("1")
	end
	def test_two_arguments
		assert_equal 2, StringCalculator.add("1,1")
	end
end