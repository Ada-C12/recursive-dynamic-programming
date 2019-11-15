# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n) (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0
    raise ArgumentError
  end
  
  return fib_helper([0, 1], 2, n)
end

def fib_helper(solutions, current, n)
  return n if n == 0 || n == 1
  
  if current == n
    return solutions[0] + solutions[1]
  end
  
  new_solution = solutions[0] + solutions[1]
  solutions[0] = solutions[1]
  solutions[1] = new_solution
  
  return fib_helper(solutions, current + 1, n)
end
