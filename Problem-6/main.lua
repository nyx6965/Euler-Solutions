-- The sum of the squares of the first ten natural numbers is,

-- The square of the sum of the first ten natural numbers is,

-- Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .

-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.



local sqr_sum = 0
local sum_sqr = 0
local result
for i=1,100 do
    sqr_sum = sqr_sum + (i * i)
    sum_sqr = sum_sqr + i
end

result = (sum_sqr * sum_sqr) - sqr_sum
print(result)