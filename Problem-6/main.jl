# Problem #6
#  Find the difference between the sum of the 
#  squares of the first one hundred natural numbers and the square of the sum.

let diff
    sum_of_sqr = 0
    sqr_of_sum = 0
    for x in 1:100
        sum_of_sqr = sum_of_sqr + abs2(x)
        sqr_of_sum = sqr_of_sum + x
    end
    diff = abs2(sqr_of_sum) - sum_of_sqr
    println(diff)
end
