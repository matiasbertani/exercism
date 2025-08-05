from itertools import count
def sum_of_multiples(limit, multiples):
    
    all_multiples = [
        list(range(base, limit, base))
        for base in multiples if base != 0
    ]
    return sum(set(sum(all_multiples, [])))

