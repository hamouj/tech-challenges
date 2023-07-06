require './lib/reversed_string'

describe ReversedString do
  let(:rs) {ReversedString.new}
  
  describe '#reverse_string()' do
    it 'reverses a string' do
      expect(rs.reverse_string("Madam, I'm Adam")).to eq("madA m'I ,madaM")
    end
  end
end