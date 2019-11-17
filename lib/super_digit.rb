# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n <= 9
  return super_digit(n.digits.sum) if n > 9
end 

# Time Complexity - O(n+m) where m = k
# Space Complexity - O(n)
def refined_super_digit(n, k)  
  num = ""
  k.times do
    num += "#{n}" 
  end
  
  n = num.to_i
  return n if n <= 9
  return super_digit(n.digits.sum) if n > 9
end

# pp super_digit(9875)
# pp refined_super_digit(9875, 4)
# pp refined_super_digit(148, 3)
