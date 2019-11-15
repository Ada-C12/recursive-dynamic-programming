# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  ar = [1,2,3,4,5,6,7,8,9]
  if ar.include? n
    return n
  end
  n = n.digits.sum
  return super_digit(n)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
