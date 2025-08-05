from itertools import count
def sum_of_multiples(limit, multiples):
    
    all_multiples = [
        list(all_multiples_until_limit(base, limit))
        for base in multiples
    ]
    return sum(set(sum(all_multiples, [])))

def all_multiples_until_limit(base, limit) -> list:
    if base == 0:
        return [0]
    max_multiplicator = limit // base
    return (
        base * multiplicator
        for multiplicator in range(max_multiplicator + 1)
        if base * multiplicator < limit
        
    )
