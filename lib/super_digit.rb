require "pry"
# Superdigit

# Time Complexity - super_digit_helper is O(log(n)) and this gets called O(n) in super_digit where n is the number of integers in num. So it's O(n).
# Space Complexity - O(1)


def super_digit_helper(n)
  if n == 0
    return 0
  end

  return n % 10 + super_digit_helper(n/10)
end

def super_digit(num)
  # binding.pry
  super_num = super_digit_helper(num)
 if super_num > 9
  super_digit(super_num)
 else
  return super_num
 end

end

  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    