# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# def fibonacci(n)
#   raise ArgumentError.new if n < 0;
#   return n if n == 0 || n == 1;
#   return fib_helper([0, 1], 2, n);
# end

# def fib_helper(solutions, current, n)
#   if current == n
#     return solutions[n - 1] + solutions[n-2]
#   end

#   solutions << solutions[current - 1] + solutions[current -2]
#   return fib_helper(solutions, current + 1, n)
# end

def fibonacci(n, fib_hash={})
  raise ArgumentError.new if n < 0
  return n if n <= 1

  fib_hash = fib_hash || {}
  return fib_hash[n] if fib_hash[n]
  return fib_hash[n] = fibonacci(n - 1, fib_hash) + fibonacci(n - 2, fib_hash)
end 