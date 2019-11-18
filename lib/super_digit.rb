# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  
  return n if [0,1,2,3,4,5,6,7,8,9].include?(n) == true

  num = n.digits
  sum = 0
  num.each do |digit|
    sum += digit
  end

  super_digit(sum) 
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    