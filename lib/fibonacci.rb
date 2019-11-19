# Improved Fibonacci

# Time Complexity - O(n!)
# Space Complexity O(n) 
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0
    raise ArgumentError, "Invalid number"
  elsif n == 0 || n == 1
    return n
  else
    return fibonacci(n - 2) + fibonacci(n - 1)
  end 
end
