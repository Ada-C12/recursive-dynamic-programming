# Superdigit

# Time Complexity - O(log10n)^2 where n is the number of digits.
# Space Complexity - O(n) where n is the number of digits.
def super_digit(n)
  return n if n <= 9
  return super_digit(n.digits.sum)
end 

# Time Complexity - O(log10n)^2 + O(log10k)^2
# Space Complexity - O(n)
def refined_super_digit(n, k)
  # dynamic programming solving this one time
  n = super_digit(n) * k
  return super_digit(n)
end

# Brute force solution
# Time Complexity - O(n+m) where m = k
# Space Complexity - O(n)
# def refined_super_digit(n, k)  
#   num = ""
#   k.times do
#     num += "#{n}"
#   end
#
#   n = num.to_i
#   return n if n <= 9
#   return super_digit(n.digits.sum) if n > 9
# end

pp super_digit(9875) #=> 2
pp refined_super_digit(9875, 4) #=> 8
