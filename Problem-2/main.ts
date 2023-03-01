function fibonacci(n: number): number {
   let t_1 = 0;
   let t_2 = 1;
   let sum = 0;
   let nxt_t = t_1 + t_2;

   while (nxt_t < n) {
      t_1 = t_2;
      t_2 = nxt_t;
      nxt_t = t_1 + t_2;
      if (nxt_t % 2 == 0) sum = sum + nxt_t;
   }
   return sum;
}

console.log(fibonacci(4000000));
