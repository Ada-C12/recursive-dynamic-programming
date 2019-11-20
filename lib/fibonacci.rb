# Improved Fibonacci

# Time Complexity - ? 
# Space Complexity - ?  O(n)
# Hint, you may want a recursive helper method

def fib_helper(solutions, current, n)
  raise ArgumentError.new("negative input") if n < 0
  return n if n == 0 || n == 1

  if current == n
    return solutions[0] + solutions[1]
  end

  temp = solutions[0]
  solutions[0] = solutions[1] 
  solutions[1] = temp + solutions[1]

  return fib_helper(solutions, current + 1, n)
end

def fibonacci(n)
  return fib_helper([0, 1], 2, n)
end