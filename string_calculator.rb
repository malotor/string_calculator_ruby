class StringCalculator 
	def self.add(string)
		result = 0
		
		delimiter = ','
		if string[0,2] == '//' 
			delimiter = string[2,1]
			string = string[3..string.length]
		end

		string.split(/[#{delimiter}\n]/) .each do |number| result = result + number.to_i end	

		return result
	end
end