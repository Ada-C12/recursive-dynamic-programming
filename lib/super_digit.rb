# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)

  return n if [0,1,2,3,4,5,6,7,8,9].include?(n) == true

  sum = 0
  until n == 0 do
    reminder = n % 10
    sum += reminder
    n = n/10
  end

  super_digit(sum) 
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)

  return n  if [0,1,2,3,4,5,6,7,8,9].include?(n) == true && k == 1
  
  sum = 0
  until n == 0 do
    reminder = n % 10
    sum += reminder
    n = n/10
  end

  super_digit = sum * k
  refined_super_digit(super_digit, 1)
end







