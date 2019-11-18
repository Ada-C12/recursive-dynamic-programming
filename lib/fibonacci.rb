# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  if n in results
    return results(n)
  else
    if n == 0
      return 0
      if n == 1 
        return 1
      end
    end
  end
  results[n] = fib(n-1) + fib(n-2)
end
