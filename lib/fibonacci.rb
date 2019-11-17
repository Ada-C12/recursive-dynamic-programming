# Improved Fibonacci

# Time Complexity - o(n)
# Space Complexity - o(n)  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fibonacci_recursive(n, s = [0, 1], current = 2)
end

def fibonacci_recursive(n, s, current)
  raise ArgumentError if n < 0
  return n if n == 0 || n == 1
  return s[0] + s[1] if current == n

  temp = s[1]
  s[1] = s[0] + s[1]
  s[0] = temp
  return fibonacci_recursive(n, s, current + 1)
end
