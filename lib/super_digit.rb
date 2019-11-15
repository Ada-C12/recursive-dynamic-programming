# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  while (n / 10) != 0
    n = super_digit_helper(n)
  end
  return n
end

def super_digit_helper(n) 
  if (n / 10) == 0
    return n
  else
    last_digit = (n % 10)
    n = (n / 10)
    return last_digit + super_digit_helper(n)
  end
end

# def super_digit(n)
#   if n < 10
#     return n
#   else
#     super_digit(n % 10 + super_digit(n / 10))
#   end
# end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  concatenated_n = ''
  while k > 0
    concatenated_n += n.to_s
    k -= 1
  end
  
  concatenated_n = concatenated_n.to_i
  return super_digit(concatenated_n)
end
