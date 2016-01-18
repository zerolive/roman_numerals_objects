require './roman_numerals'
require 'rspec'

describe "A roman citizen" do

	it "translates 1000 to M" do
		expect(RomanCitizen.translate(1000)).to eq("M")
	end
	it "translates 900 to CM" do
		expect(RomanCitizen.translate(900)).to eq("CM")
	end
	it "translates 500 to D" do
		expect(RomanCitizen.translate(500)).to eq("D")
	end
	it "translates 400 to CD" do
		expect(RomanCitizen.translate(400)).to eq("CD")
	end
	it "translates 300 to CCC" do
		expect(RomanCitizen.translate(300)).to eq("CCC")
	end
	it "translates 100 to C" do
		expect(RomanCitizen.translate(100)).to eq("C")
	end
	it "translates 90 to XC" do
		expect(RomanCitizen.translate(90)).to eq("XC")
	end
	it "translates 50 to L" do
		expect(RomanCitizen.translate(50)).to eq("L")
	end
	it "translates 40 to XL" do
		expect(RomanCitizen.translate(40)).to eq("XL")
	end
	it "translates 10 to X" do
		expect(RomanCitizen.translate(10)).to eq("X")
	end
	it "translates 9 to IX" do
		expect(RomanCitizen.translate(9)).to eq("IX")
	end
	it "translates 5 to V" do
		expect(RomanCitizen.translate(5)).to eq("V")
	end
	it "translates 4 to IV" do
		expect(RomanCitizen.translate(4)).to eq("IV")
	end
	it "translates 1 to I" do
		expect(RomanCitizen.translate(1)).to eq("I")
	end
	it "translates 2953 to MMCMLIII" do
		expect(RomanCitizen.translate(2953)).to eq("MMCMLIII")
	end
end