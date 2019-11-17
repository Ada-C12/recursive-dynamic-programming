# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  if n > 9
    p n % 10
    n = n % 10 + super_digit(n / 10)
    if n > 9
      super_digit(n)
    else 
      p n
      return n
    end
  else
    p n
    return n
  end
end
# super_digit(90210)  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    