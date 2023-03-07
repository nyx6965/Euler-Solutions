package main

import "fmt"

// Problem #3
// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

var num int = 600851475143;
var largest_num int = 0
var x int = 0

func PrimeNumbers(value int) int{
    n := value
    flag := 0

    if n == 0 || n == 1 {
        flag = 1
    }
    for i := 2; i < n / 2; i++ {
        if n % i == 0 {
            flag = 1
        }
    }

    if flag == 0 {
        return n
    }else {
        return 0
    }
}

func main()  {
    
    for i := 1; i < num; i++ {
        if num % i == 0 {
            x = PrimeNumbers(i)
            if largest_num == 0 || largest_num < x {
                largest_num = x
            }
        }
    }

    fmt.Println(largest_num)
}
