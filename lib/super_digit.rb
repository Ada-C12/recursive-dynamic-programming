# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10
  super_digit(n.digits.sum)
end


def refined_super_digit(n, k)
  n = n.digits.sum * k
  return refined_helper(n)
end

def refined_helper(n)
  return n if n < 10
  super_digit(n.digits.sum)
end