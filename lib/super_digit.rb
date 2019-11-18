# Superdigit

# Time Complexity : O(n), depends on number of digits 
# Space Complexity : O(1) as the array of digits will always be same and I will always have same variables (sum, reminder)
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
  

# Time Complexity - O(n), depends on number of digits 
# Space Complexity : O(1) as the array of digits will always be same and I will always have same variables (sum, reminder, superdigit)
def refined_super_digit(n, k)

  return n  if [0,1,2,3,4,5,6,7,8,9].include?(n) == true && k == 1
  
  sum = 0
  until n == 0 do
    reminder = n % 10
    sum += reminder
    n = n/10
  end

  redifined_number = sum * k
  refined_super_digit(redifined_number, 1)
end







