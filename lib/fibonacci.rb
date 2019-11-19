# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fib_helper(0, 1, 2, n)
end

def fib_helper(more_left, left, current, n)
  if n < 0 
    raise ArgumentError
  end 
  
  return n if n == 0 || n == 1

  if current == n 
    return more_left + left
  end 

  
  return fib_helper(left, more_left + left , current + 1, n)
end 