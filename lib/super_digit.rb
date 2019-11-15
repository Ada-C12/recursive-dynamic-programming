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

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  
end
