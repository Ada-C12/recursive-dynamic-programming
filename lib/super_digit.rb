# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  if n.class != Array
    n = n.to_s.split('')
  end
  
  sum = 0
  n.each do |value|
    sum += value.to_i
  end
  
  if sum < 10
    return sum
  else
    return super_digit(sum)
  end
end


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  number = n * k
  final = super_digit(number)
  return final
end
