# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(1)
def super_digit(n)
  s = n.to_s 
  if s.length <= 1 # basecase here
    return n
  end
  
  sum = 0 
  s.split("").each do |d|
    sum += d.to_i 
  end
  
  return super_digit(sum)
end


# # Time Complexity - ?
# # Space Complexity - ?
# def refined_super_digit(n, k)
  
# end
