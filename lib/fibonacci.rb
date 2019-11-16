# Improved Fibonacci

# Time Complexity - O(n) dependent on the amount of numbers generated
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method

def fibonacci(n)
  raise ArgumentError if n < 0
  cache = [0, 1]
  return cache[n] if cache[n]

  cache[n] = fibonacci(n - 1) + fibonacci(n - 2)
end
