# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - O(n)
def super_digit(n, sum=0) 
  return sum + n if n / 10 == 0
  return super_digit(super_digit(n/10, sum+(n%10)))
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
