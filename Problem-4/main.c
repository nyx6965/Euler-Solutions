#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Problem #4

// A palindromic number reads the same both ways. The largest palindrome made 
// from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.

int str_rev(char *str);

int main(void)
{
    char str_product[1000];
    int product;

    char *reversed_str;
    int result;

    int largest_num = 0;


    for (int i = 1; i < 100; i++)
    {
        for (int j = 1; j < 100; j++)
        {
            // int n;
            // product = i * j;
            sprintf(str_product,"%d",i * j);         
            reversed_str = str_rev(str_product);
            // printf("%d--------%d\n",product, reversed_str);
            // if (product === atoi(reversed_str)) 
            // {
            //     printf("%s-----Palindorme\n",product);
            // }
                
            // else
            //    if (largest_num == 0 || atoi(product) > largest_num )
            //         largest_num = atoi(product); 
        }
        
    }

    // printf("%d",largest_num);
    
    return 0;
}

int str_rev(char *str)
{
    char a,b,tmp;
    char *reversed_str = malloc(strlen(str));
    int value;

    for (int i = 1; i <= strlen(str); i++)
    {
        a = str[i];
        b = str[strlen(str) - i];
        tmp = a;
        a = b;
        b = tmp;

        reversed_str[0] = "";
        reversed_str[i] = a;
        reversed_str[strlen(str) + 1] = '\0';
    }
    value = atoi(reversed_str);
    printf("%i\n",value);    

    return atoi(reversed_str);    
}
