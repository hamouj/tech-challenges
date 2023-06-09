require './lib/subset'

# Things to note:
# - Input: array of unique integers
# -Output: array of arrays (all possible combos, no duplicate combos)

# Assumption:
# - Unique pair means flipped is the same (i.e. [1, 2] & [2, 1] are duplicates)

# Pseudocode:
# 1: Find all combinations (combinations method)

describe Subset do
  let(:subset) { Subset.new }

  describe 'find_combinations()' do
    it 'returns all unique combinations' do
      expect(subset.find_combinations([1, 2, 3, 4])).to eq([[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]])
      expect(subset.find_combinations([54, 77])).to eq([[54, 77]])
      expect(subset.find_combinations([])).to eq([])
    end
  end
end