let num: number = 600851475143;
let flag: number,
   x: number,
   largest_num: number = 0;

function primeNumbers(value: number): number {
   let n: number,
      i: number,
      flag: number = 0;
   n = value;
   // 0 and 1 are not prime numbers
   // change flag to 1 for non-prime number
   if (n == 0 || n == 1) flag = 1;

   for (i = 2; i <= n / 2; ++i) {
      // if n is divisible by i, then n is not prime
      // change flag to 1 for non-prime number
      if (n % i == 0) {
         flag = 1;
         break;
      }
   }

   // flag is 0 for prime numbers
   if (flag == 0) return n;

   return 0;
}

for (let i = 1; i <= num; i++) {
   // Find the factors of num
   if (num % i == 0) {
      x = primeNumbers(i);
      if (x != 0) {
         // Find the largest prime number
         if (largest_num == 0 || largest_num < x) largest_num = x;
      }
   }
}

console.log("Largest prime factor: " + largest_num);
