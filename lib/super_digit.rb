# Superdigit

# Time Complexity - I think the worst case time complexity is n log n, with n being the number of digits in the n integer. The method recursively calls the super_digit method n times to begin with, and the result of the super_digit method will trigger the while loop again if it is greater than 9 (which it will only do for 2 digits, not 1, hence log n). So, worst case O(n log n).
# Space Complexity - O(n)
def super_digit(n)
  while n > 9
    n = n % 10 + super_digit(n / 10)
  end
  return n
end

# Time Complexity - Because I used the super_digit method as a helper method, it inherits its time complexity of O(n log n), the new time complexity is k(n log n), where k is the number of digits in the k integer.

# Space Complexity - O(n). Nothing crazy happening with space.
def refined_super_digit(n, k)
  result = super_digit(n) * k
  while result > 9
    result = super_digit(result)
  end
  return result
end

