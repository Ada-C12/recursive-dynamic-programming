# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)

def digit_sum(n, sum = 0)
  return n if n < 10
  
  n.to_s.each_char { |num| sum += num.to_i }
  return sum
end

def super_digit(n)
  return n if n < 10
  return super_digit(digit_sum(n))
end
  

# Time Complexity - O(n)
# Space Complexity - O(n)
def refined_super_digit(n, k, i = 0)
  return n if n < 10 
  
  sum = digit_sum(n)
  sum *= k if i == 0
  i += 1
  
  return super_digit(sum)
end