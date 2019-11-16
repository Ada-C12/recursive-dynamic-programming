# Superdigit

# Time Complexity - O(log n), b/c #steps grows every 10th power, not linearly
# Space Complexity - O(log n)
def super_digit(n)
  if n < 10
    return n
  else
    array = num2array(n)
    return helper(array)
  end
end

def num2array(number)
  # O(log n) time & space
  # takes something like 123 and returns [1,2,3]
  array = number.to_s.split('')
  return array.map { |num| num.to_i}
end

def helper(array)
  # O(log n) time & space
  sum = array.sum
  if sum < 10
    return sum
  else
    new_array = num2array(sum)
    return helper(new_array)
  end
end



# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return sd_helper(n, memo = {})
  
end

def sd_helper(n, memo)
  
end