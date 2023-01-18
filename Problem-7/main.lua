
-- Problem #7
-- By listing the first six prime 
-- numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?

local x = 0
local fl = 0
function PrimeNumbers(value)

    local n = value
    local flag = 0

    if n == 0 or n == 1 then
        flag = 1;
    end

    for i = 2, n / 2, 1 do
        if n % i == 0 then
            flag = 1
            break
        end
    end

    if flag == 0 then
        return n
    end
end

for i = 1, 5000000, 1 do
    local y = true
    x = PrimeNumbers(i)
    if x == nil  then
    else
        fl = fl + 1
        if fl == 10001 then
            print(x)
            break
        end
    end
end

