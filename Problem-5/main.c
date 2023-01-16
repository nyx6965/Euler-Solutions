#include <stdio.h>

// Problem #5
// 2520 is the smallest number that can be divided
//  by each of the numbers from 1 to 10 without any remainder.

// What is the smallest positive number that is evenly 
// divisible by all of the numbers from 1 to 20

int GCD(int a);
int LCM(int a ,int b);

int main()
{
    int num = 2521;
    int product = 1;
    int lc;
    int smallest_num,flag = 0;
    
    for (int i = 1; i <= 10; i++)
    {
        // printf("%d\n",x);
        // GCD(i);
        lc = i * i / GCD(i);
        printf("%d",lc);
        
        // product =  GCD(i) * i;
        // // int lc = i * i / GCD(i);

    }

    return 0;
    
}

int GCD(int a)
{
    int value,largest_num = 0;

    // if (a > b || a == b)
    //     value = a;
    // if (b > a)
    //     value = b;

    for (int i = 1; i <= a; i++)
    {
        if (a % i == 0)
        {
            if (largest_num == 0 || largest_num < i)
                largest_num = i;
        }
    }

    // printf("%d\n",largest_num);
    return largest_num;
}

