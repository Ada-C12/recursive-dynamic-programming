# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  return n if n < 10
  super_digit(digitize(n))
end

def digitize(n)
  return n if n < 10
  sum = 0
  single_digit = n % 10
  sum += single_digit
  return sum + digitize(n / 10)
end


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  super_digit(n * k)
end

def digitize(n)
  return n if n < 10
  sum = 0
  single_digit = n % 10
  sum += single_digit
  return sum + digitize(n / 10)
end