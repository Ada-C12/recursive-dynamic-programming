# Improved Fibonacci

# Time Complexity - O(n) where n is the n passed as an argument. fib_helper is called n times.
# Space Complexity - 0(n), where n is the n passed in as an argument. The solutions array will have a length of 2 regardless of how large or small n is so the array will have a space complexity of O(1) but the system call stack will have n recursive calls on it, making the space complexity O(n).

def fibonacci(n)
  return fib_helper([0,1], 2, n)
end

def fib_helper(solutions, current, n)
  raise ArgumentError if n < 0

  if n == 0 || n == 1
    return n
  end

  if current == n
    return solutions[0] + solutions[1]
  end

  solutions << solutions[0] + solutions[1]
  solutions.delete_at(0)

  return fib_helper(solutions, current + 1, n)
end

