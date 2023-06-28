require './lib/bracket_matcher'

# Things to Note:
# Input = string, Output = boolean
# Use pointers

# 1. Make hash with keys of string bracket and value (sets have opposite values)
# 2. Set pointer1 = 0, pointer2 = -1
# 3. Set midpoint = string / 2
# 3. Check if value sum == 0
#   3a. If yes, add 1 to pointer1, subtract 1 from pointer 2
#   3b. If no, return false
# Repeat step 3 until pointer1 == midpoint

describe BracketMatcher do 
  let(:bracket_matcher) {BracketMatcher.new}

  describe 'match?()' do
    it 'determines if the set of brackets are a match' do
      expect(bracket_matcher.match?('{}')).to be true
      expect(bracket_matcher.match?('{()}')).to be true
      expect(bracket_matcher.match?('({[]}{[]})')).to be true
      expect(bracket_matcher.match?('{(')).to be false
      expect(bracket_matcher.match?('{[)][]}')).to be false
      expect(bracket_matcher.match?(']')).to be false
    end
  end
end