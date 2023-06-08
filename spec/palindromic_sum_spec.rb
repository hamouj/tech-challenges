require './lib/palindromic_sum.rb'

# Things to note:
# - starts at 0
# - finds the first 25 numbers
# - number + inverse == paalindrom > 1000
# returns an array of values

# Pseudocode
# 1: set variable (num) = 100
# 1a: set variable (palindrome_array) = []
# 2: add 1
# 3: convert to string, reverse, convert to integer, set to variable(reversed_num)
# 4: add num + reversed_num
# 5: check if palindrome: conver to string, reverse, convert to integer & compare
  # 5a: check if greater than 1000
  # 5b: if yes, push num into array
# 6: recursion base case => palindrom_array.length == 25
# 7: else => call method recursively with new num

describe PalindromicSum do
  let(:palindromic_sum) { PalindromicSum.new }

  describe '#find_palindromes()' do
    it 'returns the first 25 numbers that create palindromes when reversed and added' do
      expect(palindromic_sum.find_palindromes).to eq([209, 308, 407, 506, 605, 704, 803, 902, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017])
    end
  end
end
