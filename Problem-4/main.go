package main

import (
	"fmt"
	"strconv"
)

// Problem #4

// A palindromic number reads the same both ways. The largest palindrome made
// from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.


func ReverseString(str string) string  {

    rns := []rune(str)
    for i, j := 0, len(rns)-1; i < j; i, j = i+1, j-1 {
        rns[i], rns[j] = rns[j], rns[i]
    }
    return string(rns)
}

func main()  {
    var product int
    var largest_num int
    
    for i := 1; i < 1000; i++ {
        for j := 0; j < 1000; j++ {
            product = i * j
            str_pro := strconv.Itoa(product)
            reversed_num := ReverseString(str_pro)
            new,err := strconv.Atoi(reversed_num) 
            if err != nil {
                fmt.Println(err.Error())
            }
            if new == product {
                if largest_num == 0 || product > largest_num {
                    largest_num = product
                }
            }

        }
    }
    fmt.Println(largest_num)
}
