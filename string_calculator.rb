class StringCalculator 
	def self.add(string)
		result = 0
		delimiter = self.get_delimiter(string)
		string.gsub(/\/\/#{delimiter}/, '').split(/[#{delimiter}\n]/).each do |number| result = result + number.to_i end	
		return result
	end

	def self.get_delimiter(string)
		return string[0,2] == '//' ? string[2,1]  : ','
	end
end