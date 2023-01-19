// I AM NOT DONE

// Perform and log output of simple arithmetic operations
func simple_math() {
   alloc_locals;
   // adding 13 +  14
   let sum = 13 + 14;
   %{ print(f"adding 13 + 14: {ids.sum}") %}
   // multiplying 3 * 6
   let product = 3 * 6;
   %{ print(f"multiplying 3 * 6: {ids.product}") %}
   // dividing 6 by 2
   let d1 = 6 / 2;
   %{ print(f"dividing 6 by 2: {ids.d1}") %}
   // dividing 70 by 2
   let d2 = 70 / 2;
   %{ print(f"dividing 70 by 2: {ids.d2}") %}
   // dividing 7 by 2
   let d3 = 7 / 2;
   %{ print(f"dividing 7 by 2: {ids.d3}") %}
    return ();
}

