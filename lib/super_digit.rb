# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  if n <= 2
    return n
  end

  array = n.digits

  if array.length == 1
    return n
  end

  super_digit(array.sum)
end
  


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)

  array = n.digits
  sum = array.sum
  k -= 1
  
  if k < 1
    return super_digit(sum)
  end

  refined_super_digit(sum, k)
end
  