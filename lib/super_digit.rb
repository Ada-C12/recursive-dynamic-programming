# Superdigit

# Time Complexity - O(1) <- this doesn't feel quite right but it's definitely not O(n)
# Space Complexity - O(1) <- same here
def super_digit(n)
  return super_digit_helper(n.to_s)
end

def super_digit_helper(n)
  return n.to_i if n.length == 1 

  sum = 0
  n.each_char do |digit|
    sum += digit.to_i
  end 

  return super_digit_helper(sum.to_s)
end 
  
# Time Complexity - O(1) <- same qualms as above
# Space Complexity - O(1)
# I think I missed the point here, this doesn't seem like it would necessarily involve more time complexity than regular super_digit so I'm not sure how to reduce it

def refined_super_digit(n, k)
  return refined_super_digit_helper(n.to_s * k)
end

def refined_super_digit_helper(n)
  return n.to_i if n.length == 1 

  sum = 0
  n.each_char do |digit|
    sum += digit.to_i
  end 

  return super_digit_helper(sum.to_s)
end
    