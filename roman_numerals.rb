class RomanCitizen

	LETTERS = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 
							50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

	def self.translate number		
		textreturn = ""
		LETTERS.each { |value, letter| 
			textreturn << RomanNumber.build(number, value, letter)
			number = CalculateNextNumber.build(number, value)				
		}
		return textreturn
	end

end

class RomanNumber

	def self.build number, value, letter
		quantity = number / value
		return letter * quantity
	end

end

class CalculateNextNumber

	def self.build number, value
		return number % value
	end

end

#I = 1
#V = 5
#X = 10
#L = 50
#C = 100
#D = 500
#M = 1,000

#p RomanCitizen.translate(1238)