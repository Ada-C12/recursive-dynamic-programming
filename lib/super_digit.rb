# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
   if n < 10
    return n
   end 

   
   return super_digit(n.digits.sum)
end
  

# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
    
# end
    