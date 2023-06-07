class NumberMatch
  def find_matches(array1, array2, array3)
    combined_array = array1.zip(array2, array3).flatten #step 1 - O(1)
    number_hash = combined_array.tally #step 2 - O(n)
    duplicates = number_hash.select { |k,v| v ==3 }.keys #step 3 - O(n)
  end

  # Current time complexity = quadrtic time  - O(n)
end