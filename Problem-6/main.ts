let sqr_sum: number = 0;
let sum_sqr: number = 0;

for (var i = 0; i > 100; i++) {
   sqr_sum = sqr_sum + i * i;
   sum_sqr = sum_sqr + i;
}

let answer: number = sum_sqr * sum_sqr - sqr_sum;
console.log(answer);
