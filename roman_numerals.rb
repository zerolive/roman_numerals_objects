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
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return NineHundred.build(number_to_translate, number_translated)
	end

end

class NineHundred < RomanCitizen

	VALUE = 900
	LETTER = "CM"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return FiveHundred.build(number_to_translate, number_translated)
	end

end

class FiveHundred < RomanCitizen

	VALUE = 500
	LETTER = "D"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return FourHundred.build(number_to_translate, number_translated)
	end

end

class FourHundred < RomanCitizen

	VALUE = 400
	LETTER = "CD"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return OneHundred.build(number_to_translate, number_translated)
	end

end

class OneHundred < RomanCitizen

	VALUE = 100
	LETTER = "C"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return Ninety.build(number_to_translate, number_translated)
	end

end

class Ninety < RomanCitizen

	VALUE = 90
	LETTER = "XC"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return Fifty.build(number_to_translate, number_translated)
	end

end

class Fifty < RomanCitizen

	VALUE = 50
	LETTER = "L"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return Fourty.build(number_to_translate, number_translated)
	end

end

class Fourty < RomanCitizen

	VALUE = 40
	LETTER = "XL"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return Ten.build(number_to_translate, number_translated)
	end

end

class Ten < RomanCitizen

	VALUE = 10
	LETTER = "X"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return Nine.build(number_to_translate, number_translated)
	end

end

class Nine < RomanCitizen

	VALUE = 9
	LETTER = "IX"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return Five.build(number_to_translate, number_translated)
	end

end

class Five < RomanCitizen

	VALUE = 5
	LETTER = "V"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return Four.build(number_to_translate, number_translated)
	end

end

class Four < RomanCitizen

	VALUE = 4
	LETTER = "IV"

	def self.build number, romannumber
		number_to_translate = next_number(number, VALUE)
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return One.build(number_to_translate, number_translated)
	end

end

class One < RomanCitizen

	VALUE = 1
	LETTER = "I"

	def self.build number, romannumber
		number_translated = roman_number(number, VALUE, LETTER, romannumber)
		return number_translated
	end

end