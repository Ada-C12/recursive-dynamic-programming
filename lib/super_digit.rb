# Superdigit

# Time Complexity - O(nlog10n)?
# Space Complexity - O(log10n)?
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


# Time Complexity - I'm pretty sure this solution doesn't reduce the time complexity, unfortunately. So it's O(nlog10n) still?
# Space Complexity - O(log10n)?
def refined_super_digit(n, k)
  super_digit(n * k)
end
