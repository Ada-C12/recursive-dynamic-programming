# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return super_digit_helper(n)
end
  
def super_digit_helper(n)
  list = n.to_s.split(//).map { |num| num.to_i }
  return list[0] if list.length == 1
  return super_digit_helper(list.sum)
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    