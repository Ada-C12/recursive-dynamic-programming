# Superdigit

# Time Complexity - O(logn) n is the number itself
# Space Complexity - O(logn)
def super_digit(n)
    return n if n/10 == 0
    
    sum = n % 10
    while n/10 != 0
        n = n/10
        sum += n % 10
    end
    return super_digit(sum)
end


# Time Complexity - O(logn) n is the number itself
# Space Complexity - O(logn)
def refined_super_digit(n, k)
    return n if k == 1 && n/10 == 0
    sum = 0
    sum += super_digit(n) * k
    return super_digit(sum)
end
