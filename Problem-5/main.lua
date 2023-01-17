--  Problem #5
--  2520 is the smallest number that can be divided
--  by each of the numbers from 1 to 10 without any remainder.

--  What is the smallest positive number that is evenly 
--  divisible by all of the numbers from 1 to 20?

local result = 1
local x

function GCD( a, b )
    local largest_num = 0
    for i = 1, a, 1 do
        if a % i == 0 and b % i == 0 then
            if largest_num == 0 or largest_num < i then
                largest_num = i
            end
        end
    end
    return largest_num
end

for i = 1, 20, 1 do
    x = GCD(i ,result)
    result = (result / x )* i
end

print(result)