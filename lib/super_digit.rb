# Superdigit

# Time Complexity - o(n)
# Space Complexity - o(n^2)
def super_digit(n)
    return n if n < 10
    return super_digit(n.digits.sum)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    