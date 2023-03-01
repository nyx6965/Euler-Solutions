#include <stdio.h>


// A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

// a2 + b2 = c2
// For example, 32 + 42 = 9 + 16 = 25 = 52.

// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.


int pythagorean(int a, int b);
int main( void )
{

    int x = 0;
    for (int i = 0; i < 1000; i++)
    {
       for (int j = 0; j < 1000; j++)
       {
            for (int z = 0; z < 1000; z++)
            {
                if (x == 1000)
                {
                    x = i + j + z;
                }
                
            }    
       }
    }
    
    printf("%d",x);
    return 0;
}

int pythagorean(int a, int b)
{
    return (a * a) + (b * b);
}