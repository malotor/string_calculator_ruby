require_relative "string_calculator"
require 'test/unit'
 
class TestStringCalculator < Test::Unit::TestCase
	def test_zero_arguments
		assert_equal 0, StringCalculator.add("")
	end
end