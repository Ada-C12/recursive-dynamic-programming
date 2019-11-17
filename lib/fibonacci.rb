# Improved Fibonacci

# Time Complexity - O(n). This method will run n-2 times.
# Space Complexity -  O(n). The reference value of the fib_addends array is being changed with every call stack, but no additional arrays are being created. (should be O(n))
# Hint, you may want a recursive helper method

# fib_addends is defined with the numbers to make Fib(2)
def fibonacci(n, fib_addends = [0, 1])
  raise ArgumentError if n < 0
  return 0 if n == 0
  return 1 if n == 1
  
  fib = fib_addends[0] + fib_addends[1]
  # returns fib once n has decremented to 2, because the method begins calculating at Fib(2) not Fib(0)
  return fib if n == 2
  
  fib_addends[0] = fib_addends[1]
  fib_addends[1] = fib
  return fibonacci(n-1, fib_addends)
end
fibonacci(5)


## WITH HELPER METHOD

# def fibonacci(n)
#   return 0 if n == 0
#   return 1 if n == 1

#   fib_addends = [0, 1]

#   def fib_helper(fib_addends, n)
#     fib = fib_addends[0] + fib_addends[1]
#     return fib if n == 2

#     fib_addends[0] = fib_addends[1]
#     fib_addends[1] = fib
#     return fib_helper(fib_addends, n-1)
#   end
#   fib_helper(fib_addends, n)
# end