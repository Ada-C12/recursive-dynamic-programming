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


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  
end


