// I AM NOT DONE

from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin

// Implement a function that sums even numbers from the provided array
func sum_even{bitwise_ptr: BitwiseBuiltin*}(arr_len: felt, arr: felt*, run: felt, idx: felt) -> (
    sum: felt
) {
    if (arr_len == 0) {
        return (sum = 0);
    }
    let (if_even) = bitwise_xor(arr[0],1);

    if (if_even == (arr[0] - 1)) {
        let (sums) = sum_even(arr_len=arr_len-1, arr=arr+1, run=0, idx=idx+1);
        return (sum = sums);
    } 

    let (sums) = sum_even(arr_len=arr_len-1, arr=arr+1, run=0, idx=idx+1); 
    return (sum = arr[0] + sums);
}

