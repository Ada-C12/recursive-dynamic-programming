# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
  return fibonacci_helper(n, solution = [0,1], current = 2)
end

def fibonacci_helper(n, s, current)
  
  if n < 0 
    raise ArgumentError
  end

  if n == 0 || n == 1
    return n
  end

  if current == n
    return s[0] + s[1]
  end

  temp = s[1]
  s[1] = s[0] + s[1]
  s[0] = temp
  return fibonacci_helper(n, s, current + 1)
end

#Iterative

# def fib(n)
#   if n == 0 || n == 1
#     return n
#   end
#   solution = [0, 1]
#   current = 2
#   while current < n
#     p current 
#     p solution, "before"
#     temp = solution[1]
#     solution[1] = solution[0] + solution[1]
#     solution[0] = temp
#     # solut
    
#     current += 1
#     p solution, "after"
#   end
#   return solution[0] + solution[1]
# end