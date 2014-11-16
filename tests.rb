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
		assert_equal 3, StringCalculator.add("1,2")
	end
	def test_more_than_two_arguments
		assert_equal 3, StringCalculator.add("1,1,1")
	end
	def test_handle_new_lines
		assert_equal 6, StringCalculator.add("1\n2,3")
		assert_equal 6, StringCalculator.add("1\n2,\n3")
		assert_equal 6, StringCalculator.add("1\n2,\n\n3")
		assert_equal 6, StringCalculator.add("1,2\n,\n\n3")
	end
	def test_custom_delimiters
		assert_equal 3, StringCalculator.add("//;\n1;2")
		assert_equal 8, StringCalculator.add("//:3:4:1")
	end
end