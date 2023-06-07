# Input == Integer / Output == String (Roman Numerals)

# Things to Note:
# No number greater than 4000
# Must find most efficient representation

# Pseudocode:
# Step 1: Create hash => keys: integer, values: roman numeral string
  # 1a: Create empty string
# Step 2: Find hash key that is closest to value (but less than value)
# Step 3: Subtract key from integer and place value in empty string(1a)
# Step 4: Repeat steps 2 & 3 until integer == 0

require './lib/roman_numeral'

describe RomanNumeral do
  let(:roman_numeral) {RomanNumeral.new}

  describe '#to_roman()' do
    it 'translates an integer into roman numeral notation' do
      expect(roman_numeral.to_roman(128)).to eq("CXXVIII")
      expect(roman_numeral.to_roman(2000)).to eq("MM")
    end
  end
end