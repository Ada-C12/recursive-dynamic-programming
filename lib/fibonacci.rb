# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n, current = 2, solution = [0, 1])
  raise ArgumentError if n < 0
  return n if n == 0 || n == 1
  if n == current
    return solution[0] + solution[1]
  end
  solution = [solution[1], solution[0] + solution[1]]
  fibonacci(n, current + 1, solution)
end
