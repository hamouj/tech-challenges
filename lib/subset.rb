class Subset
  def find_combinations(array, unique_combos = [], combo = [])
    array.combination(2).to_a
  end
end