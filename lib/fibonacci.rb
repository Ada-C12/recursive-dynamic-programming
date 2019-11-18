# Improved Fibonacci

# Time Complexity - O(n) - depending on n 
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0
    raise ArgumentError   
  elsif n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end
