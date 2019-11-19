# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(1)
def super_digit(n)
  return n if n.to_s.length == 1
  return super_digit(n.digits.sum)
end
  

# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)

# end
    