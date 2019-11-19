# Improved Fibonacci

# Time Complexity - O(n) where n integer passed through fibonacci(n) method
# Space Complexity - ?  (should be O(n)); It is O(n) where n is the number of times the method is called and placed on the stack
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fibonacci_helper(0, 1, 2, n)
end

def fibonacci_helper(second_solution, first_solution, current, n)
  if n < 0
    raise ArgumentError
  end

  return n if n == 0 || n == 1

  if current == n
    return first_solution + second_solution
  end

  new_solution = first_solution + second_solution
  second_solution = first_solution
  first_solution = new_solution

  return fibonacci_helper(second_solution, first_solution, current + 1, n)
end
