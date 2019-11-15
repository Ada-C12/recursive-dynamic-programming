# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - O(n)
def super_digit(n)
  n = n.to_s.split('')
  sum = 0 
  n.each do |num|
    num = num.to_i
    sum += num
  end 

  if sum.to_s.length > 1 
    return super_digit(sum)
  end 
  return sum
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    