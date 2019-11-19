# Improved Fibonacci

# Time Complexity - o(n)
# Space Complexity - o(n)  (should be O(n))
# Hint, you may want a recursive helper method
def fibonacci(n)
    # base case: n = 0 => 0, n = 1 => 1
    return raise ArgumentError if n < 0
    return n if n == 0 || n == 1

    # recursive case
    return fibonacci(n - 2) + fibonacci(n - 1) # return fib(6) + fib(7) => 8 + 13 => 21
end
