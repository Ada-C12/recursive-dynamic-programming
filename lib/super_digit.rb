# Superdigit

# Time Complexity - O(log(n) - reduced by a factor of 10 
# Space Complexity - o(n)? Since we are not creating anything new
def super_digit(n)
  n < 10 ? n : super_digit(n / 10 + n % 10)
end


# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)

# end
