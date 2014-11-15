class StringCalculator 
	def self.add(string)
		result = 0
		for number in string.split(',') 
			result = result + number.to_i
		end
		return result
	end
end