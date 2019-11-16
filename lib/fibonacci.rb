# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n, i=2, memo=[0, 1])
  raise ArgumentError unless n >= 0
  
  return 0 if n == 0
  return 1 if n == 1

  new = memo.first + memo.last
  return new if i == n

  return fibonacci(n, i+1, [memo.last, new])
end
