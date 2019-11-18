# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fib_helper(n)
end

def fib_helper(n, solutions = [0,1], current = 2)
  if n < 0
    raise ArgumentError
  elsif n == 0 || n == 1
    return n
  elsif n == current
    return solutions[n - 1] + solutions[n - 2]
  end

  solutions << solutions[current - 1] + solutions[current - 2]
  return fib_helper(n, solutions, current + 1)
end

