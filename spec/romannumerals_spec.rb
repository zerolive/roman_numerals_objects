require './roman_numerals'
require 'rspec'

describe "A roman citizen" do

	it "translates 1000 to M" do
		expect(RomanCitizen.translate(1000)).to eq("M")
	end
	it "translates 500 to D" do
		expect(RomanCitizen.translate(500)).to eq("D")
	end
	it "translates 100 to C" do
		expect(RomanCitizen.translate(100)).to eq("C")
	end
	it "translates 50 to L" do
		expect(RomanCitizen.translate(50)).to eq("L")
	end
end