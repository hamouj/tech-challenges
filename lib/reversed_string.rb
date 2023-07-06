class ReversedString
  def reverse_string(string, index = -1, new_string = "")
    if new_string.length == string.length
      return new_string
    end

    new_string.concat(string[index])
    index -= 1

    reverse_string(string, index, new_string)
  end
end