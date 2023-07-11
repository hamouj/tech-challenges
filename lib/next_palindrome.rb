class NextPalindrome
  def find_next(integer)
    integer += 1

    if integer.to_s.reverse == integer.to_s
      return integer
    end

    find_next(integer)
  end
end