# Problem #3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?


num::Int128 = 600851475143 

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


function prime_factors()
    largest_number = 0
    x = 0
    for i in 1:num
        if num % i == 0
            x = prime_numbers(i)
            if largest_number == 0 || largest_number < x
                largest_number = x
            end
        end
    end
    println(largest_number)
end

prime_factors()
