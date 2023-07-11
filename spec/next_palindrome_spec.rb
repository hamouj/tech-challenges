require './lib/next_palindrome'

# Things to note:
# Input = integer
#   * Only positive whoel numbers
# Output = integer

# Steps
# 1. Add 1 to integer
# 2. Base condition: If reversed integer == integer, return integer
# 3. Call method recursively

describe NextPalindrome do
  let (:palindrome) { NextPalindrome.new }
  describe 'find_next()' do
    it 'returns the next palindrom integer' do
      expect(palindrome.find_next(100)).to eq(101)
      expect(palindrome.find_next(101)).to eq(111)
    end
  end
end