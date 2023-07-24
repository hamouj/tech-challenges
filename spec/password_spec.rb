require './lib/password'

#Things to Note
# Input: list of passwords/array of strings
# Output: number of passwords that are valid/integer

# 1. Iterate through array
  # counter = 0
  # 1a. Split string on (: ) => ["1-3 a", "abcde"]
  # 1b. Split first string on (-) => ["1", "3 a", "abcde"]
  # 1c. Split second string on ( ) => ["1", "3", "a", "abcde"]
  # 1d. Count number of [2] in [3]
  # 1e. Compare to [0] if >= counter += 1
 
describe Password do
  let(:password) {Password.new}

  describe '#number_of_valid_passwords' do
    it 'returns the number of valid passwords' do
      expect(password.number_of_valid_passwords(["1-3 a: abcde", "1-3 b: cdefg", "2-9 c: ccccccccc"])). to eq(2)
    end
  end
end