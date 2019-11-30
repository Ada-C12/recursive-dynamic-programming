# Superdigit

# Time Complexity - O(n^2): n is the numer of digits for input integer
# Space Complexity - O(n): call stack for recursion, number of digits
def super_digit(n)
  return n if n.digits.length == 1
  n = n.digits.sum
  return super_digit(n)
end

# Time Complexity - O((log10 n)^2 + (log10 k)^2): n is input n, k is the input k
# Space Complexity - O(n): call stack for recursion
def refined_super_digit(n, k)
  n = super_digit(n) * k
  return super_digit(n)
end