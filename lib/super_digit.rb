# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n.to_s.length == 1 

  return super_digit(digit_helper(n))
end
  
def digit_helper(n)
  digits = n.to_s.split("")
  result = digits.map {|element| element.to_i}
  return result.sum
end



# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
  
# end
    