# Improved Fibonacci

# Time Complexity - O(n) n being the number given
# Space Complexity - O(n)   (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fibonacci_helper([0,1], 2, n)
end

def fibonacci_helper(solutions, current, n)
  if n < 0
    raise ArgumentError
  end
  
  if n == 0 || n == 1
    return n
  end

  if current == n
    return solutions[n-1] + solutions[n-2]
  end

  solutions << solutions[current-1] + solutions[current-2]
  return fibonacci_helper(solutions, current + 1, n)
end