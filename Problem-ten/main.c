#include <stdio.h>

int prime_numbers(int value);

int main()
{
    unsigned long int num = 2000000;
    int x = 0;
    int sum = 0;
    for (int i = 0; i <= num; i++)
    {
        x = prime_numbers(i);
        sum = sum + x;
    }

    printf("%d",sum);
    return 0 ;
    
}

int prime_numbers(int value) {

  int n, i, flag = 0;
  n = value;
  // 0 and 1 are not prime numbers
  // change flag to 1 for non-prime number
  if (n == 0 || n == 1)
    flag = 1;

  for (i = 2; i <= n / 2; ++i) {
    // if n is divisible by i, then n is not prime
    // change flag to 1 for non-prime number
    if (n % i == 0) {
      flag = 1;
      break;
    }
  }

  // flag is 0 for prime numbers
  if (flag == 0)
    return n;

  return 0;
}
