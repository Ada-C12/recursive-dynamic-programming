# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n) 
  return fibonacci_top_down_helper(n, {})
end

def fibonacci_top_down_helper(n, cache)
  return n if n == 0 || n == 1

  if n < 0
    raise ArgumentError
  end

  if cache.key?(n) 
    return cache[n]
  end

  cache[n] = fibonacci_top_down_helper(n-1, cache) + fibonacci_top_down_helper(n-2, cache)
  return cache[n]
end



