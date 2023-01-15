-- Problem #4
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, 
-- we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000 .

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
