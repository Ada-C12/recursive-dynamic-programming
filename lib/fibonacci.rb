# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
def fibonacci(n)
  raise ArgumentError.new "n must be greater than or equal to 0" if n < 0
  
  fib_array = [0, 1]
  while fib_array.length < n + 1
    fib_array.push(0)
  end
  
  if n <= 1
    return n 
  else
    if fib_array[n - 1] == 0
      fib_array[n - 1] = fibonacci(n - 1)
    end
    if fib_array[n - 2] == 0
      fib_array[n - 2] = fibonacci(n - 2)
    end
  end
  
  fib_array[n] = fib_array[n - 2] + fib_array[n - 1]
  return fib_array[n]
end
