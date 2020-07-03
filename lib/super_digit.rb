# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)

def super_digit(n)

   return n if n < 10
   super_digit(n.digits.sum)

end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)

   n = n.digits.sum * k
   super_digit(n)

end


p refined_super_digit(3212, 4) 
