class StringCalculator 
	def self.add(string)
		if string.length == 0
			return 0
		else
			return string.to_i
		end
	end
end