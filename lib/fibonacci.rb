require 'pry'
# Improved Fibonacci

# Time Complexity - I think O(n)?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fib_helper(n, fib_array = [0,1], fib = 2)
end

def fib_helper(n, fib_array, fib)
  if n < 0
    raise ArgumentError
  elsif n == 0 || n == 1
    return n
  elsif fib == n 
    return fib_array[1] + fib_array[0]
  end

  temp = fib_array[1]
  fib_array[1] = fib_array[1] + fib_array[0]
  fib_array[0] = temp

  return fib_helper(n, fib_array, fib + 1)
end

