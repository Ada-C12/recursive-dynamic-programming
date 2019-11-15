# Superdigit

# Time Complexity - ?
# Space Complexity - ?
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
# Space Complexity - O(log n) because the 
def refined_super_digit(n, k)
  return super_digit(super_digit(n) * k)
end
    