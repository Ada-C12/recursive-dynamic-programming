# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError.new if n < 0
  return n if n == 0 || n == 1
  return helper(n)
end

def helper(n, memo = [0, 1], current = 2)
  return (memo[n - 1] + memo[n - 2]) if n == current
  
  memo << (memo[current - 1] + memo[current - 2])
  current += 1
  
  return helper(n, memo, current)
end
