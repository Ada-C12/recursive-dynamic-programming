# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  super_digit_helper({}, n)
   
end

def super_digit_helper(solutions, n)
  if solutions[n]
    return solutions[n]
  end

  if n.to_s.length == 1
    solutions[n] = n
    return solutions[n]  
  end

  string_num = n.to_s 

  sum = 0
  string_num.length.times do |i|
    sum += (string_num[i].to_i)
  end

  solutions[n] = super_digit_helper(solutions, sum)
  return solutions[n]
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    