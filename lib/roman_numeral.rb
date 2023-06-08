class RomanNumeral
  def to_roman(num, numeral_string = "")
    numeral_hash = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }

    if num == 0
      return numeral_string
    end

    num_to_subtract = numeral_hash.select do |k,v|
      k <= num
    end.max

    num -= num_to_subtract.first
    numeral_string.insert(-1, num_to_subtract.last)

    to_roman(num, numeral_string)
  end
end