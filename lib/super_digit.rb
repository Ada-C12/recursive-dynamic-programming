# Superdigit

# Time Complexity - O(n) where n is equal to the number of digits in the n-number passed in the method
# Space Complexity - O(n) where n is equal to the number of times the super_digit method is placed on the call stack
def super_digit(n)
  # first modulo (n % 10) and add to a counter(number)
  # until n%10 is equal 0
  # then 

  number = n.to_s.split("")
  total = 0
  number.each do |num|
    total += num.to_i
  end

  if total > 9
    return super_digit(total)
  else
    return total
  end
end
  

# Time Complexity - O(k+n) where k is equal k value passed in the method and n is equal to the number of digits in the n-number passed in super_digit method
# Space Complexity - O(n) where n is equal to the number of times the suger_digit method is placed on the call stack
def refined_super_digit(n, k)
  if k == 1
    return super_digit(n)
  end

  num = n.to_s
  while k != 1
    n = n.to_s + num
    k -= 1
  end

  return super_digit(n.to_i)
end
    