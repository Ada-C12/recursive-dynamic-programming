# Superdigit

# Time Complexity - O(n * m) where m is related to the number of digits in the sum of the digits
# Space Complexity - O(n)
def super_digit(n)
  return n if n / 10 == 0
  return super_digit(digit_helper(n))
end

def digit_helper(n, sum = 0)
  return (sum + n) if n / 10 == 0
  sum += n % 10
  n = n / 10
  return digit_helper(n, sum)
end

# Time Complexity - O(n * m)
# Space Complexity - O(n)
def refined_super_digit(n, k)
  return super_digit(k * digit_helper(n))
end
