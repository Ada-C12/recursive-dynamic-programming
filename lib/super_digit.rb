# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - O(n^2)
def super_digit(n)
  n_array = n.to_s.split('').map {|i| i.to_i}
  return n if n_array.length == 1
  return super_digit(n_array.sum)
end
  

# Time Complexity - O(n^2)
# Space Complexity - O(n^2)
def refined_super_digit(n, k)
  new_n = (n.to_s * k).to_i
  return super_digit(new_n)    
end
    