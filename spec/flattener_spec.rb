require './lib/flattener'

# Things to note:
# Input: nested array
# Output: unnested array

# Steps
# 1. Iterate through array
# 2. If element contains brackets, delete them
# 3. Else continue iterating

describe Flattener do
  let(:flattener) { Flattener.new }

  describe '#make_flat()' do
    it 'returns an unnested array' do
      expect(flattener.make_flat([1, 2, 3, [[4], 5], [[[6]]]])).to eq([1, 2, 3, 4, 5, 6])
    end
  end
end