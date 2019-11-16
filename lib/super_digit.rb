# Superdigit

# Time Complexity - O(log n), b/c #steps grows every 10th power, not linearly
# Space Complexity - O(log n)
def super_digit(n)
  if n < 10
    return n
  else
    array = num2array(n)
    return super_digit(array.sum)
  end
end

def num2array(number)
  # O(log n) time & space
  # takes something like 123 and returns [1,2,3]
  array = number.to_s.split('')
  return array.map { |num| num.to_i}
end


# Time Complexity - O(log n)
# Space Complexity - O(log n)
def refined_super_digit(n, k)
  n_array = num2array(n)
  n_sum = n_array.sum
  return super_digit(n_sum*k)
end