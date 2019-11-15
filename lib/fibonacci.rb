# Improved Fibonacci

# Time Complexity - O(n) since it will access the hash or run the recursion based on the number.
# Space Complexity - O(n) since the stack will take up memory and the hash takes up memory but it takes it linearly. (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n, fib_hash={})
  raise ArgumentError.new if n < 0
  return n if n <= 1

  fib_hash = fib_hash || {}
  return fib_hash[n] if fib_hash[n]
  return fib_hash[n] = fibonacci(n - 1, fib_hash) + fibonacci(n - 2, fib_hash)
end 