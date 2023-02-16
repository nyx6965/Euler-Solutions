package main

import "fmt"

//  Problem #7
// By listing the first six prime
// numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
// What is the 10 001st prime number?


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
    var (
        x = 0
        fl = 0
    )
    for i := 0; i < 5000000; i++ {
        x = PrimeNumbers(i)
        if x != 0 {
            fl++
            if fl == 10001 {
                fmt.Println(x)
            }
        }
    }
}

