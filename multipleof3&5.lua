-- Problem #1

-- A palindromic number reads the same both ways. The largest palindrome made 
-- from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

local sum = 0

for i = 1, 999, 1 do
    if i % 3 == 0 or i % 5 == 0 then
        sum = sum + i
    end
end

print(sum)
