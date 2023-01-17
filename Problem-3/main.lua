-- Problem #3
-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

local num = 600851475143;
local largest_num = 0
local x = 0

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
    else
        return 0
    end
end

for i = 1, num, 1 do
    if num % i == 0 then
      x = PrimeNumbers(i)
      if largest_num == 0 or largest_num < x then
        largest_num = x
      end
    end
end

print(largest_num)