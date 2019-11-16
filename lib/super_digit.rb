# Superdigit

# Time Complexity - O(log n) each time we're dividing by 10 after each recursive call
# Space Complexity - O(log n)
def super_digit(n)
  return n if n % 10 == n

  return super_digit(n % 10 + super_digit(n / 10))
end

# Time Complexity - O(log n) each time we're dividing by 10 after each recursive call
# Space Complexity - O(log n)
def refined_super_digit(n, k)
  return n if n % 10 == n || k % 10 == n

  return super_digit(k * n % 10 + super_digit(k * n / 10))
end
