let product: string;
let reversed_str: string;
let largest_num: number = 0;

for (let i = 1; i < 1000; i++) {
   for (let j = 1; j < 1000; j++) {
      product = (i * j).toString();
      reversed_str = product.split("").reverse().join("");
      if (parseInt(product) == parseInt(reversed_str)) {
         if (largest_num == 0 || parseInt(product) > largest_num) {
            largest_num = parseInt(product);
         }
      }
   }
}
console.log(largest_num);
