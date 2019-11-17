# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity -  O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  # Edge case
  if n < 0
    raise ArgumentError.new("Desired number must be greater than zero.")
  elsif n == 0 || n == 1
    return n
  else
    return fib_helper(n, 0, 1, 2)
  end
end

def fib_helper(n, num1, num2, count)
  if count == n
    return num1 + num2
  else # Recursive Case
    fib_helper(n, num2, (num1 + num2), count + 1)
  end
end
