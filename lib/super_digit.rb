# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
    return n if n/10 == 0

    sum = n % 10
    while n/10 != 0
        n = n/10
        sum += n % 10
    end
    return super_digit(sum)
end


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)

end
