# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError if n < 0
  return n if n <= 1
  
  return fib_helper(0, 1, 2, n)
end

def fib_helper(solutions_n_2, solutions_n_1, current, n)
  if current == n
    return solutions_n_1 + solutions_n_2
  end
  
  temp = solutions_n_2
  solutions_n_2 = solutions_n_1
  solutions_n_1 = solutions_n_1 + temp
  
  return fib_helper(solutions_n_2, solutions_n_1, current + 1, n)
end

