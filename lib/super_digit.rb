# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  if n < 0
    return argumentError
  end
  return n if n.to_s.length == 1
  return super_digit(n.digits.sum)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  
    
end
    