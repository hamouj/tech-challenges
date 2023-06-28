class BracketMatcher

  def match?(brackets)
    if brackets.length <= 1
      return false
    else
      midpoint_index = brackets.length / 2
      pointer1 = 0
      pointer2 = -1
  
      bracket_hash = {
        '{' => 1,
        '}' => -1,
        '(' => 2,
        ')' => -2,
        '[' => 3,
        ']' => -3
      }
      
      until pointer1 == midpoint_index
        if bracket_hash[brackets[pointer1]] + bracket_hash[brackets[pointer2]] == 0
          pointer1 += 1
          pointer2 -= 1
        else 
          return false
        end
      end
    end
    return true
  end
end