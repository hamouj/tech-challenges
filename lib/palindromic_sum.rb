class PalindromicSum
  def find_palindromes(num = 100, palindrome_array = [])
    num +=1

    reversed_num = reverse_number(num)
    
    total = num + reversed_num
    
    if total == reverse_number(total) && total > 1000
      palindrome_array.push(num)
    end

    if  palindrome_array.length == 25
      return palindrome_array
    end

    find_palindromes(num, palindrome_array)
  end

  def reverse_number(number)
    number.to_s.reverse.to_i
  end
end