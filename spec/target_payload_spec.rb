require './lib/target_payload.rb'

# Things to note:
# 2 parameters (payload - array, target - integer)
# Target can be positive, negative, 0
# Payload - unique array, no duplicates
# Stop processing when I find a set of numbers that add up to the integer

# Recursion - refactor
# Base case -> it reaches last element
# Recursive case -> adding values & checking against target

# Pseudocode
# 1. Set num = nil
# 2. Set num = first element (shift)
# 3. If payload is empty
#    return payload
# 4. Else
#   4a. Iterate through array (find), sum num + element and compare to target
#   4b. Call method after iteration (no match found)


describe TargetPayload do
  let(:target_payload) {TargetPayload.new}
  
  describe '#find_target()' do
    it 'returns the first set of numbers that sums to the target' do
      expect(target_payload.find_target([1, 3, 4, 5, 10], 15)).to eq([5, 10])
      expect(target_payload.find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)).to eq([-3, 18])
      expect(target_payload.find_target([-3, -34, 2, 6, 40, -4], 1)).to eq([])
    end
  end
end

