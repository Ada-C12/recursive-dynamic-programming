# Superdigit

# Time Complexity - O(n) ... It's dependent on the length of the string, but also only by half...so I think still O(n)?
# Space Complexity - I thin O(1) because you're not creating any structures to calculate it
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
    