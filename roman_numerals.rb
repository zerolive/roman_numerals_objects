class RomanCitizen

	def self.translate number
		return DecimalNumber.to_roman number
	end

	private

		class DecimalNumber
			TOTRANSLATE = 0
			TRANSLATED = 1

				def self.to_roman number_to_translate
					first_translated_number = ''
					translators = Translators.create
					numbers = [number_to_translate, first_translated_number]

					while numbers[TOTRANSLATE] > 0 do
						translators.each do |translator|
							numbers = translator.build(numbers[TOTRANSLATE], numbers[TRANSLATED])
						end
					end

					return numbers[TRANSLATED]
				end

		end

		class Translators

			TRANSLATORSDATA = [[1000, 'M', 3001], [900, 'CM', 1000], [500, 'D', 600], [400, 'CD', 500], [100, 'C', 301], [90, 'XC', 100], 
															[50, 'L', 60], [40, 'XL', 50], [10, 'X', 31], [9, 'IX', 10], [5, 'V', 6], [4, 'IV', 5], [1, 'I', 4]]
			VALUE = 0
			LETTER = 1
			LIMIT = 2

			def self.create
				translators = []
				TRANSLATORSDATA.each do |translator|
					translators << Translator.new(translator[VALUE], translator[LETTER], translator[LIMIT])
				end
				translators
			end

			private

				def roman_number number, value, letter, roman_number
					quantity = number / value
					roman_number << letter * quantity
					return roman_number
				end

				def next_number number, value
					return number % value
				end

				def value_to_letter number, roman_number, value, letter
					number_to_translate = next_number(number, value)
					number_translated = roman_number(number, value, letter, roman_number)
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

			def translate_to_letter number_to_translate, roman_number, value, letter, limit
				return value_to_letter number_to_translate, roman_number, value, letter if can_translate? number_to_translate, value, limit
				return [number_to_translate, roman_number]
			end

			class Translator < Translators

				def initialize value, letter, limit
					@value = value
					@letter = letter
					@limit = limit
				end

				def build number_to_translate, roman_number
					return translate_to_letter number_to_translate, roman_number, @value, @letter, @limit
				end

			end

		end
		
end