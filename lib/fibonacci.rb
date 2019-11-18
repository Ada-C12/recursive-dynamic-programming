# Improved Fibonacci

# Time Complexity - O(n) because it performs n operations
# Space Complexity - O(n) because it makes n calls on the stack

def fibonacci(n)
  return fib_helper(n, n_minus_2 = 0, n_minus_1 = 1, 2)
end

def fib_helper(n, n_minus_2, n_minus_1, current) # starting values (4, 0, 1, 2)
  
  # base cases
  
  raise ArgumentError if n < 0
  return n if n == 0 || n == 1
  return n_minus_1 + n_minus_2 if current == n

  # recursive step -- increment current and reassign n_minus_2 and n_minus_1
  current += 1 
  fibber = n_minus_1 
  n_minus_1 = n_minus_1 + n_minus_2 
  n_minus_2 = fibber 
  return fib_helper(n, n_minus_2, n_minus_1, current)   
end

