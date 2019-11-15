# Superdigit

# Time Complexity - O(n) - where n is the number of digits
# Space Complexity - O(n) - where n is the number of digits
def super_digit(n)
  if (super_helper(n) / 10) == 0
    return super_helper(n)
  else
    return super_digit(super_helper(n))
  end
end

def super_helper(n)
  return n if n/10 == 0
  return (n % 10) + super_helper(n/10)
end
  

# Time Complexity - O(n * k)
# Space Complexity - O(n * k)
def refined_super_digit(n, k)
  return super_digit(n * k)
end
    