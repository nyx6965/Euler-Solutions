--  Problem #5
--  2520 is the smallest number that can be divided
--  by each of the numbers from 1 to 10 without any remainder.

--  What is the smallest positive number that is evenly 
--  divisible by all of the numbers from 1 to 20?

function GCD( a, b )
    local value,largest_num = 0,0
    if a > b then
        value = a
    end
    if b > a then
        value = b
    end
    for i = 1, value, 1 do
        if a % i == 0 and b % i == 0 then
            if largest_num == 0 or largest_num < i then
                largest_num = i
            end
        end
    end
    return largest_num
end


local result = 1
local x

for i = 1, 10, 1 do
    x = GCD(i ,result)
    -- print(x)
    result = x * i / result
end

print(result)