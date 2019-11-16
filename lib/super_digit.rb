# Superdigit

# Time Complexity - O(n) where n is the number of digits
# log10(n) where n is the value of n
# Space Complexity - O(n) where n is the value of n
def super_digit(n)
  if n.to_s.length < 2
    return n
  else 
    sum = 0
    n.to_s.each_char do |num|
      sum += num.to_i
    end
    super_digit(sum)
  end
end


# Time Complexity - ? 
# Space Complexity - ?
def refined_super_digit(n, k)
  if n.to_s.length < 2
    return n
  else
    value = super_digit(n) * k
    super_digit(value)
  end
end
