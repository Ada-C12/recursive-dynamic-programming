# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
#   you only keep the last two solutions, so the solutions array does not grow,
#   but you're still effectiving the stack by adding recursive calls
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0
    raise ArgumentError.new('Number cannot be less than zero')
  end
  
  return fib_helper([0, 1], 2, n)
end

def fib_helper(solutions, current, n)
  if n == 0 || n == 1
    return n
  end
  
  last_solution = solutions[-1]
  new_solution = solutions[0] + solutions[1]
  
  if current == n    
    return new_solution
  end
  
  solutions = [last_solution, new_solution]
  return fib_helper(solutions, current + 1, n)
end
