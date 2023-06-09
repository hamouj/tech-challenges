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

  def find_all_combinations(array, combos = [], counter = 1)
    if counter > array.length
      return combos.flatten(1).insert(0, [])
    end
    
    combos.push(array.combination(counter).to_a)
    counter += 1

    find_all_combinations(array, combos, counter)
  end
end