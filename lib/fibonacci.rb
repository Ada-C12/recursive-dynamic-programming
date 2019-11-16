# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper(memo = [0,1], curr = 2, n)
end

def fib_helper(memo = [0,1], curr = 2, n)
  # puts "\nn = #{n}, curr = #{curr}"
  if n == 0  
    return memo[0]
  elsif n == 1
    return memo[1]
  elsif n > curr
    curr += 1
    newVal = memo[0] + memo[1]
    memo.shift
    memo.push(newVal)
    # puts "memo is now #{memo}"
    
    return fib_helper(memo, curr, n)
    
  elsif n == curr
    return memo[0]+memo[1]
  end 
end