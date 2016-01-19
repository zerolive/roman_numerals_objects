class RomanCitizen

	class << self

		def translate number
			return DecimalNumber.to_roman number
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

			def value_to_letter number, romannumber, value, letter
				number_to_translate = next_number(number, value)
				number_translated = roman_number(number, value, letter, romannumber)
				return [number_to_translate, number_translated]
			end

		  def can_translate? number, value, limit
				minimum number, value and maximum number, limit
		  end

		  def minimum number, value
		  		number >= value
		  end

		  def maximum number, limit
		  		number < limit
		  end

	end

end

class Thousands < RomanCitizen

	VALUE = 1000
	LETTER = "M"

	class << self

		def build number_to_translate, romannumber
			return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE
			return [number_to_translate, romannumber]
		end

		private

			def can_translate? number, value
				number >= value
			end

	end
end

class NineHundred < RomanCitizen

	VALUE = 900
	LETTER = "CM"
	LIMIT = 1000

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class FiveHundred < RomanCitizen

	VALUE = 500
	LETTER = "D"
	LIMIT = 600

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class FourHundred < RomanCitizen

	VALUE = 400
	LETTER = "CD"
	LIMIT = 500

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class OneHundred < RomanCitizen

	VALUE = 100
	LETTER = "C"
	LIMIT = 301

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class Ninety < RomanCitizen

	VALUE = 90
	LETTER = "XC"
	LIMIT = 100

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class Fifty < RomanCitizen

	VALUE = 50
	LETTER = "L"
	LIMIT = 60

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class Fourty < RomanCitizen

	VALUE = 40
	LETTER = "XL"
	LIMIT = 50

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class Ten < RomanCitizen

	VALUE = 10
	LETTER = "X"
	LIMIT = 31

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class Nine < RomanCitizen

	VALUE = 9
	LETTER = "IX"
	LIMIT = 10

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class Five < RomanCitizen

	VALUE = 5
	LETTER = "V"
	LIMIT = 6

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class Four < RomanCitizen

	VALUE = 4
	LETTER = "IV"
	LIMIT = 5

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class One < RomanCitizen

	VALUE = 1
	LETTER = "I"
	LIMIT = 4

	def self.build number_to_translate, romannumber
		return value_to_letter number_to_translate, romannumber, VALUE, LETTER if can_translate? number_to_translate, VALUE, LIMIT
		return [number_to_translate, romannumber]
	end

end

class DecimalNumber
	TOTRANSLATE = 0
	TRANSLATED = 1

	class << self

		def to_roman number_to_translate
			first_translated_number = ''
			translators = translators_numbers
			numbers = [number_to_translate, first_translated_number]

			while numbers[TOTRANSLATE] > 0 do
				translators.each do |translator|
					numbers = translator.build(numbers[TOTRANSLATE], numbers[TRANSLATED])
				end
			end

			return numbers[TRANSLATED]
		end

		private

		  def translators_numbers
		    result = []
		    ObjectSpace.each_object(::Class) {|klass| result << klass if klass < RomanCitizen }
		    result
		  end

	end
end