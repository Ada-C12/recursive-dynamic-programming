# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError if n < 0

  fibonacci_helper([0,1], 2, n)

end

def fibonacci_helper(solutions, current, n)
  return n if n == 0 || n == 1


end
