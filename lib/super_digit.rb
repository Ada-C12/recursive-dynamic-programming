# Superdigit

# Time Complexity - O log n because with each operation we are cutting the total of n by at worst 10
# Space Complexity - O log n
def super_digit(n) 
  # base case
  if n <= 9
    return n
  else
    # recursive step -- convert number to array of integers and add them all together
    n_array = n.digits
    n = n_array.sum
    super_digit(n)
  end
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  
end
