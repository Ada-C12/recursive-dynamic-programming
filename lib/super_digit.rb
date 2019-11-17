# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n^2)?
def super_digit(n)
  if n < 10
    return n
  end
  
  string_num = n.to_s
  sum = 0
  
  string_num.each_char do |i|
    sum += i.to_i
  end
  
  super_digit(sum)
end


# Time Complexity - O(n); I'm not totally sure the time complexity of to_s or to_i, but 
#   I think at worst it would be O(n) and since they run in sequence I think this maintains
#   O(n).
# Space Complexity - O(n^2); I'm thinking n^2 because every time super_digit is called,
#   it creates a new variable string_num, whose size is relative to the size of n. So,  
#   n multiplied n times.
def refined_super_digit(n, k)
  string_num = n.to_s * k
  
  return super_digit(string_num.to_i)
end
