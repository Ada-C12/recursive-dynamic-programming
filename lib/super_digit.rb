# Superdigit

# Time Complexity - O(log10(n))
# Space Complexity - O(log10(n))
def super_digit(n)
  if n < 10
    return n
  end
  
  # return super_digit(sum_of_digits(n))
  return super_digit((n % 10) + super_digit(n / 10))
end

# def sum_of_digits(n)
#   if n < 10
#     return n
#   end

#   return (n % 10) + sum_of_digits(n / 10)
# end

# Time Complexity - O(log10(n))
# Space Complexity - O(log10(n))
def refined_super_digit(n, k)
  return super_digit(super_digit(n) * k)
end
