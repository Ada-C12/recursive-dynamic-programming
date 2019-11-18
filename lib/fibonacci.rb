# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1
  raise ArgumentError if n < 0
  
  return fibonacci(n-2) + fibonacci(n-1)
end
