import re

from functools import reduce

def largest_product(series: str, size: int) -> int:
    check_for_error_in_inputs(series, size)
    all_products = [product(serie) for serie in all_series(series, size)]
    return max(all_products)

def check_for_error_in_inputs(series: str, size: int) -> None:
    if size > len(series):
        raise ValueError("span must be smaller than string length")
    if size < 0:
        raise ValueError("span must not be negative")
    if re.search("[^0-9]", series):
        raise ValueError("digits input must only contain digits")

def all_series(series: str, size: int) -> list[str]:
    for i in range(len(series) - size +1):
        yield series[i:i+size]

def product(serie: str) -> int:
    multiply = lambda x, y: int(x) * int(y)
    return reduce(multiply, serie)
    