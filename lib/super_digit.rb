# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  if n <= 2
    return n
  end

  array = n.digits

  if array.length == 1
    return n
  end

  super_digit(array.sum)
end
  

# Time Complexity - O(log 10 (n))
# Space Complexity - O(n) where n is number of digits
def refined_super_digit(n, k)
  
  if n <= 2
    return n
  else 
    saved = (k) * super_digit(n)
  end 

  super_digit(saved)
end
  