# Superdigit

# Time Complexity - O(log10 n). N is the size of the input number and I divide it by 10 each time.
# Space Complexity - O(log10 n) because of the recursive calls on the stack.
def super_digit(n)
  if n < 10
    return n
  else
    super_digit(n % 10 + super_digit(n/10))
  end
end

# Time Complexity - O(log10 (n * k)).
# Space Complexity - O(log10 (n * k)) because of the recursive calls on the stack.
def refined_super_digit(n, k)
  number_string = n * k
  
  number = number_string.to_i
  
  super_digit(number)
end
