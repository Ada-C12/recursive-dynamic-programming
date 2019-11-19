# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10
  
  sum = 0
  n.to_s.each_char do |num|
    sum += num.to_i
  end
    
  return super_digit(sum)
end
  

# Time Complexity - O(n)
# Space Complexity - O(n)
def refined_super_digit(n, k, i = 0)
  return n if n < 10
  
  sum = 0
  n.to_s.each_char do |num|
    sum += num.to_i
  end
  
  sum *= k if i == 0
  return refined_super_digit(sum, k, i += 1)
end