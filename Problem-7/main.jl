# Problem #7
# By listing the first six prime 
# numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?
global flag = 0

function prime_numbers(number)
    flag = 0

    if number == 1 || number == 0
        flag = 1
    end

    for x in 2:number/2
        if number % x == 0
            flag = 1
        end
    end

    if flag == 0
        return number
    end
    return 0
end

for i in 1:50000
    x = prime_numbers(i)
    if x != 0
        global flag = flag + 1
        if flag == 10001
            println(x)
        end
    end
end

