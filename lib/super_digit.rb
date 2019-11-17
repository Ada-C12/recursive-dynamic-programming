# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(log2 n)
def super_digit(n)
  puts "super_digit("+n.to_s+")"
  if (n / 10) == 0
    return n
  else
    sum = 0
    while ((n / 10.0) > 0)
      puts "  while"
      sum += (n % 10)
      n = (n / 10)
    end
    return super_digit(sum)
  end
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  concatenated_n = ''
  while k > 0
    concatenated_n += n.to_s
    k -= 1
  end
  
  concatenated_n = concatenated_n.to_i
  return super_digit(concatenated_n)
end
