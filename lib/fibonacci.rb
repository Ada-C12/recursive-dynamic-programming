# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n, current = 2, solution = [0, 1])
  raise ArgumentError if n < 0
  return n if n == 0 || n == 1
  if n == current
    return solution[n - 1] + solution[n - 2]
  end
  solution << solution[current - 1] + solution[current - 2]
  fibonacci(n, current + 1, solution)
end
