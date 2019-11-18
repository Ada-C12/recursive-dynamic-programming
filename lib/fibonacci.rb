# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method


def fibonacci(n)
  if n < 0 
    raise ArgumentError
  end
  if n == 0
    return 0
  end
  if n==1 || n==2
    return 1
  end
  fibonacci_helper(0, n, {1=> 1, 2=> 1})
end

def fibonacci_helper(current, n, look_up)
  if n == current
    return look_up[current-1] + look_up[current-2]
  end
  if current >= 3
    look_up[current] = look_up[current-1] + look_up[current-2]
    look_up.delete(current - 2)
  end
  current += 1
  fibonacci_helper(current, n, look_up)
end




# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55
#1.618 the golden ratio

# Fib(0) = 0 Fib(1) = 1

# Fib(n) = Fib(n-2) + Fib(n-1), for all n >= 2