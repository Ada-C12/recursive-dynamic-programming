# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  if n < 10
    return n
  else
    super_digit(n % 10 + super_digit(n/10))
  end
end

# Time Complexity - O(n)
# Space Complexity - O(n)
def refined_super_digit(n, k)
  number_string = n * k
  
  number = number_string.to_i
  
  super_digit(number)
end
