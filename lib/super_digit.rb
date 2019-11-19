# Superdigit

# Time Complexity - o(n)
# Space Complexity - o(1)
def super_digit(n)
  new_num = 0
  numbers = n.to_s.split("")
  if numbers.length <= 1
    return n
  end
  numbers.each do |i|
    new_num += i.to_i
  end
  return super_digit(new_num)
end
   

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  new_num = 0
  times = k
  numbers = n.to_s.split("")
  if numbers.length <= 1
    return n
  end
  numbers.each do |i|
    new_num += i.to_i
  end
    new_n = times * new_num
    return super_digit(new_n) 
end
    