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

  if current == n
    return solutions[n-1] + solutions[n-2]
  end
  
  temp = solutions[current - 1] + solutions[current - 2]
  
  solutions[0] = solutions[1]
  solutions[1] = temp
  return fibonacci_helper(solutions, current, n - 1)

end
