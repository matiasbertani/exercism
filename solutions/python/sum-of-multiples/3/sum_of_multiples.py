from itertools import count
def sum_of_multiples(limit, multiples):
    
    return sum(
        {
            multiple
            for base in multiples if base != 0
            for multiple in range(base, limit, base)
        }
    )
