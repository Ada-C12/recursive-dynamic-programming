# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - O(n^2)
def super_digit(n)
  return n.to_i if n.to_s.length == 1
  digits = n.to_s.chars.map(&:to_i)
  sum = 0
  digits.each do |digit|
    sum += digit
  end
  return sum if sum.to_s.length == 1
  return superdigit(sum)
end
  

# Time Complexity - O(n^2)
# Space Complexity - O(n^2)
def refined_super_digit(n, k)
    new_n = n.to_s * k
    super_digit(new_n)
end
    