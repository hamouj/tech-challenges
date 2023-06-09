require './lib/subset'

# Things to note:
# - Input: array of unique integers
# -Output: array of arrays (all possible combos, no duplicate combos)

# Assumption:
# - Unique pair means flipped is the same (i.e. [1, 2] & [2, 1] are duplicates)

# Pseudocode:
# 1: Find all combinations (combinations method)
# ------------------------------------------------
# Recursion:
# Base case => if array is empty, return combos
# Recursive case => add array to combos

# 1: Set variable (num) = nil & variable (combos) = []
# 2: Shift first element and set equal to num
# 3: Iterate through rest of array
#   3a: Combine num & element to make an array
#   3b: Add array to combos
# 4: Call method recursively (outside of iteration), with num and combos as arguments
# -----------------------------------------------------------------------------------

describe Subset do
  let(:subset) { Subset.new }

  describe 'find_combinations()' do
    it 'returns all unique combinations' do
      expect(subset.find_combinations([1, 2, 3, 4])).to eq([[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]])
      expect(subset.find_combinations([54, 77])).to eq([[54, 77]])
      expect(subset.find_combinations([])).to eq([])
    end
  end

  describe 'find_all_combinations()' do
    it 'returns all combinations' do
      expect(subset.find_all_combinations([1, 2, 3, 4])).to eq([[],[1],[2],[3],[4],[1,2],[1,3],[1,4],[2,3],[2,4],[3,4],[1,2,3],[1,2,4],[1,3,4],[2,3,4],[1,2,3,4]])
    end
  end
end

# Find all combinations (extension)
# 
# Things to note:
# - subset arrays can be 0 to n in length
#
# Pseudocode
# 1: Create variable (combos) equal to [[]], counter = 1
# 2: Call combinations with argument (counter) and push return into combos
# 3: Call method recursively with arguments (array, counter += 1)
# Base case => counter > array's length, return combos