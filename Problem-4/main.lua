-- Problem #4

-- A palindromic number reads the same both ways. The largest palindrome made 
-- from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

local product
local reversed_num
local largest_num = 0

for i = 1, 1000, 1 do
    for j = 1, 1000, 1 do
        product = i * j
        reversed_num = string.reverse( tostring(product) )
        if tonumber( reversed_num ) == product then
            if largest_num == 0 or  product > largest_num then
                largest_num = product
            end
        end
    end
end

print(largest_num)
