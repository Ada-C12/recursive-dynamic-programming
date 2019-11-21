# Superdigit

# Time Complexity - O(n) where n is the number of digits in the input number
# Space Complexity - O(log n)
def super_digit(n)
  if (n / 10) == 0
    return n
  else
    sum = 0
    while ((n / 10.0) > 0)
      sum += (n % 10)
      n = (n / 10)
    end
    return super_digit(sum)
  end
end

# Time Complexity - O(n)
#     because the while loop to create the concatenated number
#     and the while loop adding the digits of the number are not nested.
# Space Complexity - O(log k * n)
def refined_super_digit(n, k)
  concatenated_n = ''
  while k > 0
    concatenated_n += n.to_s
    k -= 1
  end
  
  concatenated_n = concatenated_n.to_i
  return super_digit(concatenated_n)
end
