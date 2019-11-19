# Improved Fibonacci

# Time Complexity - ?  O(n)
# Space Complexity - ?  O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fib_helper({}, n)
  
end


def fib_helper(solutions, n)
  if solutions.include?(n)
    return solutions[n]
  end
  
  if n == 0
    solutions[n] = 0
    return 0 
  elsif n == 1
    solutions[n] = 1
    return 1 
  elsif n >= 2
    solutions[n] = (fib_helper(solutions, n-2) + fib_helper(solutions, n-1))
    return solutions[n]
  else
    raise ArgumentError
  end
  
end