# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10
  super_digit(n.digits.sum)
end
