# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n) stack space
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fib_helper([0, 1], 2, n)
end

def fib_helper(results, current, n)
  raise ArgumentError if n < 0
  return results[n] if n == 0 || n == 1
  
  if current == n
    return results[0] + results[1]
  end
  
  temp = results[0] + results[1]
  results[0] = results[1]
  results[1] = temp
  return fib_helper(results, current + 1, n)
end