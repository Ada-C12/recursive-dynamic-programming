# # Improved Fibonacci

# # Time Complexity - ?
# # Space Complexity - ?  (should be O(n))
# # Hint, you may want a recursive helper method

def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper([0, 1], 2, n)
end

def fib_helper(fib_saver, current, n)
  return n if n == 0 || n == 1
  return fib_saver.sum if current == n

  new_sum = fib_saver.sum
  fib_saver[0] = fib_saver[1]
  fib_saver[1] = new_sum
  # is this better/different than `fib_saver = [fib_saver[1], new_sum]`?
  return fib_helper(fib_saver, current + 1, n)
end
