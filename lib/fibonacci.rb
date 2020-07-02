
# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)

# Hint, you may want a recursive helper method
def fibonacci(n)

  return 1 if n == 1
  return 0 if n == 0

  fibonacci(n - 2) + fibonacci(n - 1)
  
end
