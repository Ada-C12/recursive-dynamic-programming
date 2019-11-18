# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method

def fibonacci(target, ultimate = 1, pentultimate = 0, n = 2)
  if target < 0
    raise ArgumentError
  elsif target == 0
    return 0
  elsif target == 1
    return 1
  end
  
  if n == target
    current = pentultimate + ultimate
    return current
  else
    n += 1
    holder = pentultimate + ultimate
    pentultimate = ultimate
    ultimate = holder
    return fibonacci(target, ultimate = ultimate, pentultimate = pentultimate, n = n)
  end
end

# # # # brute force
# def fibonacci(target)
#   if target < 0
#     raise ArgumentError
#   elsif target == 0
#     return 0
#   elsif target == 1
#     return 1
#   end

#   ultimate = 1
#   pentultimate = 0
#   current = 1
#   n = 2

#   until n == target
#     pentultimate = ultimate

#     ultimate = current
#     current = pentultimate + ultimate
#     n += 1
#   end

#   return current

# end