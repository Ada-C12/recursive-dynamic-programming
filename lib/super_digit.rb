# Superdigit

# Time Complexity - O(lg(n))
# Space Complexity - O(lg(n))
def super_digit(n, sum = 0)
  return (sum + n) if n % 10 == n
  sum = super_digit(n / 10, sum + n % 10)
  super_digit(sum, 0)
end
  

# Time Complexity - O(lg(n))
# Space Complexity - O(lg(n))
def refined_super_digit(n, k, sum = 0)
  return (sum + k * n) if k * n % 10 == k*n
  sum = super_digit(k * n / 10, sum + k * n % 10)
  super_digit(sum, 0)
end
    