# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(log n)

def super_digit(input)
  # # # # brute recursion
  if input < 10
    return input
  elsif input >= 10
    sum = 0
    i = 0
    limit = input.to_s.length
    dig_input = input.to_s
    until i == limit
      sum += dig_input[i].to_i
      i += 1
    end
    return super_digit(sum)
  end
end

# Time Complexity - O(n)
# Space Complexity - O(m log n)

# This method uses the super_digit method as a helper as I'm too lazy to write it again. 
def refined_super_digit(number, repeater)
  assembled_number = ""
  dig_number = number.to_s
  repeater.times do 
    assembled_number = assembled_number + dig_number
  end
  return super_digit(super_digit(number) * repeater)
end


