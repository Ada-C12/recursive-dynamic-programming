# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - ?  O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n < 0 
    raise ArgumentError
  end
  return fib_helper(num_minus_1 = 1, num_minus_2 = 0, 2, n)
end

def fib_helper(num_minus_1, num_minus_2, current, n)
  return n if n == 0 || n == 1

  if current == n
    return (num_minus_1 + num_minus_2)
  end

  temp = num_minus_1 
  num_minus_1 = num_minus_1 + num_minus_2
  num_minus_2 = temp

  return fib_helper(num_minus_1, num_minus_2, current + 1, n)
end