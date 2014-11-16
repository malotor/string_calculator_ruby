class StringCalculator 
	def self.add(string)
		result = 0
		for number in string.split(/[,\n]/) 
			result = result + number.to_i
		end
		return result
	end
end