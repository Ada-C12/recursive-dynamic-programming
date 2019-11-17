# Superdigit

# Time Complexity - O(log n)
# Space Complexity - O(log n)
def super_digit(n)
  return n if n / 10 < 1
  
  string = n.to_s.split("")
  sum = 0
  
  string.each do |num|
    sum += num.to_i
  end
  
  return super_digit(sum)
end


# Time Complexity - O(log n)
# Space Complexity - O(log n)
def refined_super_digit(n, k)
  num = super_digit(n)
  
  return super_digit(k*num)
end


# n = 148
# k = 4

# superdigit(148148148148)
# = superdigt( superdigit(148) +  superdigit(148) + superdigit(148) + superdigit(148))