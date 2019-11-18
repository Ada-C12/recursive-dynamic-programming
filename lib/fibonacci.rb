# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n) (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fibonacci_helper([0,1], 2, n)
end


def fibonacci_helper(previous_two, current, n)
  raise ArgumentError.new('no.') if n < 0
  return n if n == 0 || n == 1

  if current == n
    return previous_two[0] + previous_two[-1]
  end

  previous_two[0], previous_two[-1] = previous_two[-1], (previous_two[0] + previous_two[-1])
  return fibonacci_helper(previous_two, current + 1, n)
end

