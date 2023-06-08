class TargetPayload
  def find_target(payload, target)
    num = payload.shift # O(n)

    if payload.empty?
      return payload # O(1)
    elsif num_match = payload.find { |integer| num + integer == target } # O(n)
      return [num, num_match]
    else
      find_target(payload, target)
    end
  end
end

# Time complexity - linear time - O(n)
# Space complexity - 1x