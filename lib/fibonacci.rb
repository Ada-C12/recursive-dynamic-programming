# Improved Fibonacci
# Dynamic Programming Recursive Solution

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method

def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper([0, 1], 2, n)
end 

def fib_helper(solutions, current, n)
  return n if n == 0 || n == 1
  
  last_solution = solutions[-1]
  new_solution = solutions[0] + solutions[1]
  
  if current == n
    return new_solution
  end 
  
  solutions = [last_solution, new_solution]
  return fib_helper(solutions, current + 1, n)
end

# pp fibonacci(9)
