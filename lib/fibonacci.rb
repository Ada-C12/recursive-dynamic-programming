# Improved Fibonacci

# Time Complexity - O(n), where n is n
# Space Complexity - O(n), where n is stack frames
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper(n, 2, [0,1])
end

def fib_helper(n, current, solutions)
  return n if n == 0 || n == 1

  if n == current
    return solutions[0] + solutions[1]
  else
    last_solution = solutions[1]
    new_solution = solutions[0] + solutions[1]
    solutions = [last_solution, new_solution]
    return fib_helper(n, current+1, solutions)
  end
end