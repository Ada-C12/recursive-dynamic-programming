# Superdigit

# Time Complexity - O(log n) where n is passed in as an argument. Super digit will be called log n times.
# Space Complexity - O(log n), where n is the n passed in as an argument because the system call stack will have log n recursive calls on it.
def super_digit(n)
  sum = 0

  while n > 0
    sum += n % 10
    n /= 10
  end

  if sum < 10 
    return sum
  else
    return super_digit(sum)
  end
end
  

# Time Complexity - O(log n + log m) where n is the n passed in and m is the super_digit solution of n.
# Space Complexity - O(log n + log m) because there will be log n calls on the system call stack and then log m calls on the system call stack where m is the super_digit solution of n.
def refined_super_digit(n, k)
  n_super_digit = super_digit(n)
  
  return super_digit(n_super_digit * k)
end
    