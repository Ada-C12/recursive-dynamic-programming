# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fib_helper([0,1], 2, n)
end

def fib_helper(solutions, current, n)
  raise ArgumentError if n < 0
  return n if n == 0 || n == 1
  return solutions[n - 1] + solutions[n - 2] if current == n

  solutions << solutions[current - 1] + solutions[current - 2]
  return fib_helper(solutions, current + 1, n)
end