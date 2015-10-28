class RomanCitizen

	class << self

		def translate number
			textreturn = ""
			textreturn << Thousands.build(number).last
			number = Thousands.build(number).first
			textreturn << FiveHundred.build(number).last
			number = FiveHundred.build(number).first
			textreturn << OneHundred.build(number).last
			number = OneHundred.build(number).first
			textreturn << Fifty.build(number).last
			number = Fifty.build(number).first
			textreturn << Ten.build(number).last
			number = Ten.build(number).first
			return textreturn
		end

		private

			def array_maker number, value, letter
				arrayreturn = []
				arrayreturn << next_number(number, value)
				arrayreturn << letter * quantity_of_letters(number, value)
				return arrayreturn
			end

			def quantity_of_letters number, value
				number / value
			end

			def next_number number, value
				number % value
			end

	end

end

class Thousands < RomanCitizen

	VALUE = 1000
	LETTER = "M"

	class << self

		def build number
			return array_maker(number, VALUE, LETTER)
		end

	end

end

class FiveHundred < RomanCitizen

	VALUE = 500
	LETTER = "D"

	class << self

		def build number
			return array_maker(number, VALUE, LETTER)
		end

	end

end

class OneHundred < RomanCitizen

	VALUE = 100
	LETTER = "C"

	class << self

		def build number
			return array_maker(number, VALUE, LETTER)
		end

	end

end

class Fifty < RomanCitizen

	VALUE = 50
	LETTER = "L"

	class << self

		def build number
			return array_maker(number, VALUE, LETTER)
		end

	end

end

class Ten < RomanCitizen

	VALUE = 10
	LETTER = "X"

	class << self

		def build number
			return array_maker(number, VALUE, LETTER)
		end

	end

end

#I = 1
#V = 5
#X = 10
#L = 50
#C = 100
#D = 500
#M = 1,000

#p RomanCitizen.translate(2638)