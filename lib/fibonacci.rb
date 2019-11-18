# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0
    raise ArgumentError
  end
  return fib_helper(n, {})
end

def fib_helper(n, hash)
  if hash.key? n
    return hash[n]
  end
  
  # basecase
  if n == 0 || n == 1
    return n
  end
  
  hash[n] = fib_helper(n - 1, hash) + fib_helper(n - 2, hash)
  return hash[n]
end
