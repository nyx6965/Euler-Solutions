#  Problem #4

#  A palindromic number reads the same both ways. The largest palindrome made 
#  from the product of two 2-digit numbers is 9009 = 91 × 99.
#  Find the largest palindrome made from the product of two 3-digit numbers.


let largest_number = 0
    for i in 1:1000
        for j in 1:1000
            product = i * j
            reversed = reverse(string(product))
            if product == parse(Int, reversed)
                if largest_number == 0 || largest_number < product
                    largest_number = product
                end
            end
        end
    end
    println(largest_number)
end
