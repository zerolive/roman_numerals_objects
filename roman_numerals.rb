class RomanCitizen

	class << self

		def translate number
			return Thousands.build(number, "")
		end

		private

			def roman_number number, value, letter, romannumber
				quantity = number / value
				romannumber << letter * quantity
				return romannumber
			end

			def next_number number, value
				return number % value
			end

	end

end

class Thousands < RomanCitizen

	VALUE = 1000
	LETTER = "M"

	def self.build number, romannumber
		return NineHundred.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class NineHundred < RomanCitizen

	VALUE = 900
	LETTER = "CM"

	def self.build number, romannumber
		return FiveHundred.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class FiveHundred < RomanCitizen

	VALUE = 500
	LETTER = "D"

	def self.build number, romannumber
		return FourHundred.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class FourHundred < RomanCitizen

	VALUE = 400
	LETTER = "CD"

	def self.build number, romannumber
		return OneHundred.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class OneHundred < RomanCitizen

	VALUE = 100
	LETTER = "C"

	def self.build number, romannumber
		return Ninety.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class Ninety < RomanCitizen

	VALUE = 90
	LETTER = "XC"

	def self.build number, romannumber
		return Fifty.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class Fifty < RomanCitizen

	VALUE = 50
	LETTER = "L"

	def self.build number, romannumber
		return Fourty.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class Fourty < RomanCitizen

	VALUE = 40
	LETTER = "XL"

	def self.build number, romannumber
		return Ten.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class Ten < RomanCitizen

	VALUE = 10
	LETTER = "X"

	def self.build number, romannumber
		return Nine.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class Nine < RomanCitizen

	VALUE = 9
	LETTER = "IX"

	def self.build number, romannumber
		return Five.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class Five < RomanCitizen

	VALUE = 5
	LETTER = "V"

	def self.build number, romannumber
		return Four.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class Four < RomanCitizen

	VALUE = 4
	LETTER = "IV"

	def self.build number, romannumber
		return One.build(next_number(number, VALUE), roman_number(number, VALUE, LETTER, romannumber))
	end

end

class One < RomanCitizen

	VALUE = 1
	LETTER = "I"

	def self.build number, romannumber
		return roman_number(number, VALUE, LETTER, romannumber)
	end

end