# Improved Fibonacci

# Time Complexity - o(n)
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0
    raise ArgumentError.new
  end
  return fib_helper([0, 1], 2, n)
end

def fib_helper(solutions, current, n)
  if n == 0 || n == 1
    return n
  end
  if current == n
    return solutions[n - 1] + solutions[n - 2]
  end

  solutions.push(solutions[current - 1] + solutions[current - 2])
  return fib_helper(solutions, current + 1, n)

  #   puts fib(3)
  #   puts fib(5)
  #   puts fib(0)
  #   puts fib(8)

end
