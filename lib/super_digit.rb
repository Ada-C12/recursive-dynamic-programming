# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  digits = n.to_s.chars.map(&:to_i)
  sum = 0
  digits.each do |digit|
    sum += digit
  end
  return sum if sum.to_s.length == 1
  return superdigit(sum)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    