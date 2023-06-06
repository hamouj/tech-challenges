## Clarifying questions
# Return empty array if no number appears in all 3 arrays?
# Return array with single value if only 1 number appears in all 3 arrays?
# All integers formatted the same? Have seen underscores used in place of commas within integers

## Possible algorithms
# Binary search instead of iteration (already sorted so optimized)

## Pseudocode
# Things to note: 
#  -arrays are sorted in ascending order
#  -method takes in 3 arrays and returns 1 array
#  -no duplicate values in each array
# 
# Step 1: Combine all 3 arrays
# Step 2: Iterate through array and tally number of occurences for each integer
# Step 3: Identify the keys with a value >= 3

require './lib/number_match'

describe NumberMatch do
  it 'identifies the numbers in all 3 arrays' do
    nums_1 = [1, 2, 4, 5, 8]
    nums_2 = [2, 3, 5, 7, 9]
    nums_3 = [1, 2, 5, 8, 9]
    
    expect(NumberMatch.new.find_matches(nums_1, nums_2, nums_3)).to eq([2,5])
  end

  it 'returns an empty array when there are no matching numbers' do
    # ascending order
    nums_1 = [1, 2, 15, 18, 20]
    nums_2 = [2, 7, 9, 13, 25]
    nums_3 = [1, 5, 8, 9, 22]
    
    expect(NumberMatch.new.find_matches(nums_1, nums_2, nums_3)).to eq([])
  end
end
