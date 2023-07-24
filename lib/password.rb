class Password

  def number_of_valid_passwords(password_array)
    valid_password_count = 0

    password_array.each do |password|

      policy, password = password.split(": ")
      lower_limit, upper_limit_with_character = policy.split("-")
      upper_limit, character = upper_limit_with_character.split(" ")
    
      password_character_count = password.count(character)
      if password_character_count >= lower_limit.to_i && password_character_count <= upper_limit.to_i
        valid_password_count += 1
      end
    end

    valid_password_count
  end
end