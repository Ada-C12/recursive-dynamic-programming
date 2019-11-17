# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(1)
def super_digit(n)    
  until n <= 9
    n = n.digits.sum
  end
  return n
end


# Time Complexity - O(n+m) where m = k
# Space Complexity - O(n)
def refined_super_digit(n, k)  
  num = ""
  k.times do
    num += "#{n}" 
  end 
  
  n = num.to_i
  until n <= 9
    n = n.digits.sum
  end
  return n
end

# pp super_digit(9875)
# pp refined_super_digit(9875, 4)
# pp refined_super_digit(148, 3)
