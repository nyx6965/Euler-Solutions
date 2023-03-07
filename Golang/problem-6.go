package main

import "fmt"

func main()  {
    var (
        sqr_sum = 0
        sum_sqr = 0
        result = 0
    )

    for i := 0; i < 100; i++ {
        sqr_sum = sqr_sum + (i * i)
        sum_sqr = sum_sqr + i
    }

    result = (sum_sqr * sum_sqr) - sqr_sum
    fmt.Println(result)
}