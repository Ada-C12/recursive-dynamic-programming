# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(x)
   if x < 10
    return x
  elsif
    sum = integer_calcuation(x)
    super_digit(sum)
  end 
end

def integer_calcuation(x)
  
  digit_array = x.to_s.split('')

  sum = 0

  digit_array.each do |element|
    sum += element.to_i
  end 

  return sum
end 


  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    