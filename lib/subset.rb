class Subset
  # def find_combinations(array)
  #   array.combination(2).to_a
  # end

  def find_combinations(array, num = nil, combos = [])
    num = array.shift

    if array.empty?
      return combos
    end

    array.each do |element|
      combos.push([num, element])
    end
    
    find_combinations(array, num, combos)
  end
end