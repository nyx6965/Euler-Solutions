package main
// Problem #5
// 2520 is the smallest number that can be divided
//  by each of the numbers from 1 to 10 without any remainder.

// What is the smallest positive number that is evenly 
// divisible by all of the numbers from 1 to 20

func GCD(a int, b int) int {
	value,largest_number := 0,0;
	if a > b || a == b {
		value  = a
	}
	if b > a {
		value = b
	}
	for i := 0; i < value; i++ {
		if a % i == 0 && b % i == 0 {
			if largest_number == 0 || largest_number < i {
				largest_number = i;
			}
		}
	}
	return largest_number
}

func main()  {
	result := 1
	for i := 0; i < 20; i++ {
		x := GCD(i,result)
		result = (result / x) * i 
	}
}